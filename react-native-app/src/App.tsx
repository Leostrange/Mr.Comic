import React, {useEffect} from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {SafeAreaProvider} from 'react-native-safe-area-context';
import {GestureHandlerRootView} from 'react-native-gesture-handler';
import Toast from 'react-native-toast-message';

import AppNavigator from './navigation/AppNavigator';
import {ComicProvider} from './store/ComicContext';
import DatabaseService from './services/DatabaseService';

const App = () => {
  useEffect(() => {
    const initializeApp = async () => {
      try {
        // Initialize database
        await DatabaseService.initDatabase();
        console.log('App initialized successfully');
      } catch (error) {
        console.error('Failed to initialize app:', error);
      }
    };

    initializeApp();

    // Cleanup on unmount
    return () => {
      DatabaseService.closeDatabase();
    };
  }, []);

  return (
    <GestureHandlerRootView style={{flex: 1}}>
      <SafeAreaProvider>
        <ComicProvider>
          <NavigationContainer>
            <AppNavigator />
          </NavigationContainer>
          <Toast />
        </ComicProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
};

export default App;