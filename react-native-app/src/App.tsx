import React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {SafeAreaProvider} from 'react-native-safe-area-context';
import {GestureHandlerRootView} from 'react-native-gesture-handler';
import Toast from 'react-native-toast-message';

import AppNavigator from './navigation/AppNavigator';
import {ComicProvider} from './store/ComicContext';

const App = () => {
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