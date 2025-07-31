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

const RecentScreen = () => {
  const {state} = useComicContext();

  const recentComics = state.comics
    .filter(comic => comic.lastRead > 0)
    .sort((a, b) => b.lastRead - a.lastRead)
    .slice(0, 20);

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
        data={recentComics}
        renderItem={renderComic}
        keyExtractor={item => item.id}
        numColumns={2}
        ListEmptyComponent={
          <View style={styles.emptyContainer}>
            <Text style={styles.emptyText}>Нет недавних комиксов</Text>
            <Text style={styles.emptySubtext}>
              Начните читать комиксы, чтобы они появились здесь
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

export default RecentScreen;