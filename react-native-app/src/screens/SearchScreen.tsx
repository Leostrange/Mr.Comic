import React, {useState} from 'react';
import {
  View,
  Text,
  StyleSheet,
  TextInput,
  FlatList,
  TouchableOpacity,
} from 'react-native';
import {useComicContext} from '../store/ComicContext';
import ComicCard from '../components/ComicCard';
import {Comic} from '../types';

const SearchScreen = () => {
  const {state} = useComicContext();
  const [searchQuery, setSearchQuery] = useState('');

  const filteredComics = state.comics.filter(comic =>
    comic.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
    comic.author.toLowerCase().includes(searchQuery.toLowerCase()),
  );

  const renderComic = ({item}: {item: Comic}) => (
    <ComicCard
      comic={item}
      onPress={() => {}}
      onLongPress={() => {}}
    />
  );

  return (
    <View style={styles.container}>
      <View style={styles.searchContainer}>
        <TextInput
          style={styles.searchInput}
          placeholder="Поиск комиксов..."
          value={searchQuery}
          onChangeText={setSearchQuery}
          autoCapitalize="none"
          autoCorrect={false}
        />
      </View>
      
      <FlatList
        data={filteredComics}
        renderItem={renderComic}
        keyExtractor={item => item.id}
        numColumns={2}
        ListEmptyComponent={
          <View style={styles.emptyContainer}>
            <Text style={styles.emptyText}>
              {searchQuery ? 'Ничего не найдено' : 'Начните поиск'}
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
  searchContainer: {
    padding: 16,
    backgroundColor: '#fff',
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  searchInput: {
    height: 40,
    borderWidth: 1,
    borderColor: '#e0e0e0',
    borderRadius: 8,
    paddingHorizontal: 12,
    fontSize: 16,
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 32,
  },
  emptyText: {
    fontSize: 16,
    color: '#666',
    textAlign: 'center',
  },
});

export default SearchScreen;