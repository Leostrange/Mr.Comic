import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  TouchableOpacity,
  Switch,
} from 'react-native';
import {useComicContext} from '../store/ComicContext';

const SettingsScreen = () => {
  const {state, dispatch} = useComicContext();

  const toggleReadingMode = () => {
    const newMode = state.readingMode === 'page' ? 'webtoon' : 'page';
    dispatch({type: 'SET_READING_MODE', payload: newMode});
  };

  return (
    <ScrollView style={styles.container}>
      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Чтение</Text>
        
        <View style={styles.settingItem}>
          <Text style={styles.settingLabel}>Режим чтения</Text>
          <View style={styles.settingValue}>
            <Text style={styles.settingText}>
              {state.readingMode === 'page' ? 'Страница' : 'Вебтун'}
            </Text>
            <Switch
              value={state.readingMode === 'webtoon'}
              onValueChange={toggleReadingMode}
            />
          </View>
        </View>
      </View>

      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Библиотека</Text>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>Сканировать папки</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>Импорт комиксов</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>Экспорт данных</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
      </View>

      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Приложение</Text>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>О приложении</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>Политика конфиденциальности</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
        
        <TouchableOpacity style={styles.settingItem}>
          <Text style={styles.settingLabel}>Условия использования</Text>
          <Text style={styles.settingArrow}>→</Text>
        </TouchableOpacity>
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  section: {
    marginTop: 20,
    backgroundColor: '#fff',
    borderTopWidth: 1,
    borderBottomWidth: 1,
    borderColor: '#e0e0e0',
  },
  sectionTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    padding: 16,
    paddingBottom: 8,
  },
  settingItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
    borderBottomWidth: 1,
    borderBottomColor: '#f0f0f0',
  },
  settingLabel: {
    fontSize: 16,
    color: '#333',
  },
  settingValue: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  settingText: {
    fontSize: 14,
    color: '#666',
    marginRight: 8,
  },
  settingArrow: {
    fontSize: 16,
    color: '#999',
  },
});

export default SettingsScreen;