import { useState, useEffect } from 'react';

/**
 * Хук для debounce значения
 * @param {any} value - Значение для debounce
 * @param {number} delay - Задержка в миллисекундах
 * @returns {any} - Debounced значение
 */
export const useDebounce = (value, delay) => {
  const [debouncedValue, setDebouncedValue] = useState(value);

  useEffect(() => {
    const handler = setTimeout(() => {
      setDebouncedValue(value);
    }, delay);

    return () => {
      clearTimeout(handler);
    };
  }, [value, delay]);

  return debouncedValue;
};

