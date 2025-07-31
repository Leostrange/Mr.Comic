import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Dimensions,
} from 'react-native';
import FastImage from 'react-native-fast-image';
import {Comic} from '../types';

const {width} = Dimensions.get('window');
const cardWidth = (width - 48) / 2;

interface ComicCardProps {
  comic: Comic;
  onPress: () => void;
  onLongPress: () => void;
  isSelected?: boolean;
}

const ComicCard: React.FC<ComicCardProps> = ({
  comic,
  onPress,
  onLongPress,
  isSelected = false,
}) => {
  return (
    <TouchableOpacity
      style={[styles.container, isSelected && styles.selected]}
      onPress={onPress}
      onLongPress={onLongPress}
      activeOpacity={0.7}>
      <View style={styles.imageContainer}>
        {comic.coverPath ? (
          <FastImage
            source={{uri: comic.coverPath}}
            style={styles.coverImage}
            resizeMode={FastImage.resizeMode.cover}
          />
        ) : (
          <View style={styles.placeholderImage}>
            <Text style={styles.placeholderText}>{comic.title[0]}</Text>
          </View>
        )}
        {comic.isFavorite && (
          <View style={styles.favoriteBadge}>
            <Text style={styles.favoriteText}>★</Text>
          </View>
        )}
        {isSelected && (
          <View style={styles.selectionOverlay}>
            <Text style={styles.selectionText}>✓</Text>
          </View>
        )}
      </View>
      
      <View style={styles.infoContainer}>
        <Text style={styles.title} numberOfLines={2}>
          {comic.title}
        </Text>
        <Text style={styles.author} numberOfLines={1}>
          {comic.author}
        </Text>
        <Text style={styles.pageCount}>
          {comic.pageCount} стр.
        </Text>
        {comic.currentPage > 0 && (
          <View style={styles.progressContainer}>
            <View style={styles.progressBar}>
              <View
                style={[
                  styles.progressFill,
                  {width: `${(comic.currentPage / comic.pageCount) * 100}%`},
                ]}
              />
            </View>
            <Text style={styles.progressText}>
              {comic.currentPage}/{comic.pageCount}
            </Text>
          </View>
        )}
      </View>
    </TouchableOpacity>
  );
};

const styles = StyleSheet.create({
  container: {
    width: cardWidth,
    margin: 8,
    backgroundColor: '#fff',
    borderRadius: 8,
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: {width: 0, height: 2},
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  selected: {
    borderWidth: 2,
    borderColor: '#2196F3',
  },
  imageContainer: {
    position: 'relative',
    width: '100%',
    height: cardWidth * 1.4,
    borderTopLeftRadius: 8,
    borderTopRightRadius: 8,
    overflow: 'hidden',
  },
  coverImage: {
    width: '100%',
    height: '100%',
  },
  placeholderImage: {
    width: '100%',
    height: '100%',
    backgroundColor: '#e0e0e0',
    justifyContent: 'center',
    alignItems: 'center',
  },
  placeholderText: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#999',
  },
  favoriteBadge: {
    position: 'absolute',
    top: 8,
    right: 8,
    backgroundColor: '#FFD700',
    borderRadius: 12,
    width: 24,
    height: 24,
    justifyContent: 'center',
    alignItems: 'center',
  },
  favoriteText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: 'bold',
  },
  selectionOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(33, 150, 243, 0.3)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  selectionText: {
    color: '#fff',
    fontSize: 24,
    fontWeight: 'bold',
  },
  infoContainer: {
    padding: 12,
  },
  title: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 4,
  },
  author: {
    fontSize: 12,
    color: '#666',
    marginBottom: 4,
  },
  pageCount: {
    fontSize: 11,
    color: '#999',
  },
  progressContainer: {
    marginTop: 8,
  },
  progressBar: {
    height: 2,
    backgroundColor: '#e0e0e0',
    borderRadius: 1,
    marginBottom: 4,
  },
  progressFill: {
    height: '100%',
    backgroundColor: '#2196F3',
    borderRadius: 1,
  },
  progressText: {
    fontSize: 10,
    color: '#666',
    textAlign: 'center',
  },
});

export default ComicCard;