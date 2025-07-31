import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  FlatList,
} from 'react-native';
import {useComicContext} from '../store/ComicContext';
import ComicCard from '../components/ComicCard';
import {Comic} from '../types';

const FavoritesScreen = () => {
  const {state} = useComicContext();

  const favoriteComics = state.comics.filter(comic => comic.isFavorite);

  const renderComic = ({item}: {item: Comic}) => (
    <ComicCard
      comic={item}
      onPress={() => {}}
      onLongPress={() => {}}
    />
  );

  return (
    <View style={styles.container}>
      <FlatList
        data={favoriteComics}
        renderItem={renderComic}
        keyExtractor={item => item.id}
        numColumns={2}
        ListEmptyComponent={
          <View style={styles.emptyContainer}>
            <Text style={styles.emptyText}>Нет избранных комиксов</Text>
            <Text style={styles.emptySubtext}>
              Добавьте комиксы в избранное для быстрого доступа
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

export default FavoritesScreen;