import React from 'react';
import {createStackNavigator} from '@react-navigation/stack';
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import {createDrawerNavigator} from '@react-navigation/drawer';

import LibraryScreen from '../screens/LibraryScreen';
import ReaderScreen from '../screens/ReaderScreen';
import SettingsScreen from '../screens/SettingsScreen';
import SearchScreen from '../screens/SearchScreen';
import FavoritesScreen from '../screens/FavoritesScreen';
import RecentScreen from '../screens/RecentScreen';

const Stack = createStackNavigator();
const Tab = createBottomTabNavigator();
const Drawer = createDrawerNavigator();

const LibraryStack = () => (
  <Stack.Navigator>
    <Stack.Screen 
      name="Library" 
      component={LibraryScreen}
      options={{title: 'Библиотека'}}
    />
    <Stack.Screen 
      name="Reader" 
      component={ReaderScreen}
      options={{title: 'Читалка', headerShown: false}}
    />
  </Stack.Navigator>
);

const TabNavigator = () => (
  <Tab.Navigator>
    <Tab.Screen 
      name="LibraryTab" 
      component={LibraryStack}
      options={{title: 'Библиотека', headerShown: false}}
    />
    <Tab.Screen 
      name="Favorites" 
      component={FavoritesScreen}
      options={{title: 'Избранное'}}
    />
    <Tab.Screen 
      name="Recent" 
      component={RecentScreen}
      options={{title: 'Недавние'}}
    />
    <Tab.Screen 
      name="Search" 
      component={SearchScreen}
      options={{title: 'Поиск'}}
    />
  </Tab.Navigator>
);

const AppNavigator = () => (
  <Drawer.Navigator>
    <Drawer.Screen 
      name="Main" 
      component={TabNavigator}
      options={{title: 'Mr.Comic', headerShown: false}}
    />
    <Drawer.Screen 
      name="Settings" 
      component={SettingsScreen}
      options={{title: 'Настройки'}}
    />
  </Drawer.Navigator>
);

export default AppNavigator;