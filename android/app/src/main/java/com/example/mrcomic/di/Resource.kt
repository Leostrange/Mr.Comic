package com.example.mrcomic.di // Помещаем в di, так как это общая утилита для данных/репозиториев

/**
 * Общий класс для представления состояний загрузки данных.
 * Используется для обертки ответов от репозиториев, чтобы UI мог легко обрабатывать
 * состояния загрузки, успеха и ошибки.
 *
 * @param T Тип данных в случае успеха.
 * @property data Данные, если операция успешна.
 * @property message Сообщение об ошибке, если операция не удалась.
 * @property errorData Дополнительные данные об ошибке (например, тело ответа сервера при ошибке).
 */
sealed class Resource<T>(
    val data: T? = null,
    val message: String? = null,
    val errorData: Any? = null // Может содержать DTO ошибки от сервера или другие детали
) {
    /**
     * Представляет успешное выполнение операции с полученными данными.
     */
    class Success<T>(data: T) : Resource<T>(data)

    /**
     * Представляет ошибку во время выполнения операции.
     * @param message Сообщение об ошибке.
     * @param data Опциональные данные, которые были получены до ошибки или детали ошибки.
     * @param errorData Дополнительные данные об ошибке.
     */
    class Error<T>(message: String, data: T? = null, errorData: Any? = null) : Resource<T>(data, message, errorData)

    /**
     * Представляет состояние загрузки данных.
     */
    class Loading<T>(data: T? = null) : Resource<T>(data)
}
