import React, {useState, useEffect} from 'react';
import {
  View,
  StyleSheet,
  Dimensions,
  StatusBar,
  TouchableOpacity,
  Text,
  Alert,
} from 'react-native';
import {useNavigation} from '@react-navigation/native';
import {useComicContext} from '../store/ComicContext';
import FastImage from 'react-native-fast-image';
import {PanGestureHandler, State} from 'react-native-gesture-handler';
import ComicService from '../services/ComicService';

const {width, height} = Dimensions.get('window');

const ReaderScreen = () => {
  const navigation = useNavigation();
  const {state, dispatch} = useComicContext();
  const [currentPage, setCurrentPage] = useState(0);
  const [pageImage, setPageImage] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [comicId, setComicId] = useState<string | null>(null);

  const comic = state.currentComic;

  useEffect(() => {
    if (comic) {
      loadComic();
    }
  }, [comic]);

  const loadComic = async () => {
    if (!comic) return;
    
    setIsLoading(true);
    try {
      // Open comic using native module
      const result = await ComicService.openComicForReading(comic.filePath);
      setComicId(result.comicId);
      
      // Update comic with actual page count
      const updatedComic = {
        ...comic,
        pageCount: result.pageCount,
        title: result.title,
      };
      dispatch({type: 'UPDATE_COMIC', payload: updatedComic});
      
      // Load first page
      await loadPage(0);
    } catch (error) {
      console.error('Failed to load comic:', error);
      Alert.alert('Ошибка', 'Не удалось открыть комикс');
    } finally {
      setIsLoading(false);
    }
  };

  const loadPage = async (pageIndex: number) => {
    if (!comicId || !comic) return;
    
    try {
      setIsLoading(true);
      const pagePath = await ComicService.getPage(comicId, pageIndex);
      setPageImage(pagePath);
      setCurrentPage(pageIndex);
      
      // Update progress
      const progress = {
        comicId: comic.id,
        currentPage: pageIndex,
        lastRead: Date.now(),
        readingTime: 0,
      };
      await ComicService.updateProgress(progress);
      
    } catch (error) {
      console.error('Failed to load page:', error);
      Alert.alert('Ошибка', 'Не удалось загрузить страницу');
    } finally {
      setIsLoading(false);
    }
  };

  const goToNextPage = async () => {
    if (comic && currentPage < comic.pageCount - 1) {
      await loadPage(currentPage + 1);
    }
  };

  const goToPreviousPage = async () => {
    if (currentPage > 0) {
      await loadPage(currentPage - 1);
    }
  };

  const onGestureEvent = (event: any) => {
    const {translationX} = event.nativeEvent;
    
    if (event.nativeEvent.state === State.END) {
      if (translationX > 50) {
        goToPreviousPage();
      } else if (translationX < -50) {
        goToNextPage();
      }
    }
  };

  useEffect(() => {
    // Cleanup when component unmounts
    return () => {
      if (comicId) {
        ComicService.closeComic(comicId);
      }
    };
  }, [comicId]);

  if (!comic) {
    return (
      <View style={styles.container}>
        <Text style={styles.errorText}>Комикс не найден</Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <StatusBar hidden />
      
      <PanGestureHandler onGestureEvent={onGestureEvent}>
        <View style={styles.imageContainer}>
          {isLoading ? (
            <View style={styles.loadingContainer}>
              <Text style={styles.loadingText}>Загрузка страницы...</Text>
            </View>
          ) : pageImage ? (
            <FastImage
              source={{uri: `file://${pageImage}`}}
              style={styles.pageImage}
              resizeMode={FastImage.resizeMode.contain}
            />
          ) : (
            <View style={styles.loadingContainer}>
              <Text style={styles.loadingText}>Загрузка комикса...</Text>
            </View>
          )}
        </View>
      </PanGestureHandler>

      {/* Page controls */}
      <View style={styles.controls}>
        <TouchableOpacity
          style={[styles.controlButton, currentPage === 0 && styles.disabledButton]}
          onPress={goToPreviousPage}
          disabled={currentPage === 0}>
          <Text style={styles.controlButtonText}>←</Text>
        </TouchableOpacity>
        
        <Text style={styles.pageInfo}>
          {currentPage + 1} / {comic.pageCount}
        </Text>
        
        <TouchableOpacity
          style={[styles.controlButton, currentPage === comic.pageCount - 1 && styles.disabledButton]}
          onPress={goToNextPage}
          disabled={currentPage === comic.pageCount - 1}>
          <Text style={styles.controlButtonText}>→</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
  },
  imageContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  pageImage: {
    width: width,
    height: height,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    color: '#fff',
    fontSize: 16,
  },
  errorText: {
    color: '#fff',
    fontSize: 18,
    textAlign: 'center',
    marginTop: 100,
  },
  controls: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    backgroundColor: 'rgba(0, 0, 0, 0.7)',
  },
  controlButton: {
    width: 50,
    height: 50,
    borderRadius: 25,
    backgroundColor: 'rgba(255, 255, 255, 0.2)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  disabledButton: {
    opacity: 0.5,
  },
  controlButtonText: {
    color: '#fff',
    fontSize: 24,
    fontWeight: 'bold',
  },
  pageInfo: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
});

export default ReaderScreen;