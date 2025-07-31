import React, {useEffect, useState} from 'react';
import {
  View,
  Text,
  StyleSheet,
  FlatList,
  TouchableOpacity,
  RefreshControl,
  Alert,
} from 'react-native';
import {useNavigation} from '@react-navigation/native';
import {useComicContext} from '../store/ComicContext';
import ComicCard from '../components/ComicCard';
import {Comic} from '../types';

const LibraryScreen = () => {
  const navigation = useNavigation();
  const {state, dispatch} = useComicContext();
  const [refreshing, setRefreshing] = useState(false);

  useEffect(() => {
    loadComics();
  }, []);

  const loadComics = async () => {
    dispatch({type: 'SET_LOADING', payload: true});
    try {
      // TODO: Implement comic loading from service
      const mockComics: Comic[] = [
        {
          id: '1',
          title: 'Sample Comic',
          author: 'Unknown',
          filePath: '/path/to/comic.cbz',
          pageCount: 50,
          currentPage: 0,
          lastRead: Date.now(),
          isFavorite: false,
          dateAdded: Date.now(),
          readingTime: 0,
        },
      ];
      dispatch({type: 'SET_COMICS', payload: mockComics});
    } catch (error) {
      dispatch({type: 'SET_ERROR', payload: 'Failed to load comics'});
    } finally {
      dispatch({type: 'SET_LOADING', payload: false});
    }
  };

  const onRefresh = async () => {
    setRefreshing(true);
    await loadComics();
    setRefreshing(false);
  };

  const onComicPress = (comic: Comic) => {
    dispatch({type: 'SET_CURRENT_COMIC', payload: comic});
    navigation.navigate('Reader');
  };

  const onComicLongPress = (comic: Comic) => {
    dispatch({type: 'SELECT_COMIC', payload: comic.id});
  };

  const onDeleteComics = () => {
    Alert.alert(
      'Удалить комиксы',
      `Удалить ${state.selectedComics.length} комикс(ов)?`,
      [
        {text: 'Отмена', style: 'cancel'},
        {
          text: 'Удалить',
          style: 'destructive',
          onPress: () => {
            state.selectedComics.forEach(comicId => {
              dispatch({type: 'DELETE_COMIC', payload: comicId});
            });
            dispatch({type: 'CLEAR_SELECTION'});
          },
        },
      ],
    );
  };

  const renderComic = ({item}: {item: Comic}) => (
    <ComicCard
      comic={item}
      onPress={() => onComicPress(item)}
      onLongPress={() => onComicLongPress(item)}
      isSelected={state.selectedComics.includes(item.id)}
    />
  );

  return (
    <View style={styles.container}>
      {state.isSelectionMode && (
        <View style={styles.selectionBar}>
          <Text style={styles.selectionText}>
            Выбрано: {state.selectedComics.length}
          </Text>
          <TouchableOpacity
            style={styles.deleteButton}
            onPress={onDeleteComics}>
            <Text style={styles.deleteButtonText}>Удалить</Text>
          </TouchableOpacity>
        </View>
      )}
      
      <FlatList
        data={state.comics}
        renderItem={renderComic}
        keyExtractor={item => item.id}
        numColumns={2}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
        ListEmptyComponent={
          <View style={styles.emptyContainer}>
            <Text style={styles.emptyText}>Библиотека пуста</Text>
            <Text style={styles.emptySubtext}>
              Добавьте комиксы для начала чтения
            </Text>
          </View>
        }
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  selectionBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
    backgroundColor: '#2196F3',
  },
  selectionText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold',
  },
  deleteButton: {
    backgroundColor: '#f44336',
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 4,
  },
  deleteButtonText: {
    color: 'white',
    fontWeight: 'bold',
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 32,
  },
  emptyText: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#666',
    marginBottom: 8,
  },
  emptySubtext: {
    fontSize: 14,
    color: '#999',
    textAlign: 'center',
  },
});

export default LibraryScreen;