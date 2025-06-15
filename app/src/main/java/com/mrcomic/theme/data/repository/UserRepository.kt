package com.example.mrcomic.theme.data.repository

import com.example.mrcomic.theme.data.db.UserDao
import com.example.mrcomic.theme.data.model.User
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class UserRepository @Inject constructor(
    private val userDao: UserDao
) {
    fun getAllUsers(): Flow<List<User>> = userDao.getAllUsers()
    suspend fun getUserById(userId: String): User? = userDao.getUserById(userId)
    suspend fun insertUser(user: User) = userDao.insertUser(user)
    suspend fun updateUser(user: User) = userDao.updateUser(user)
    suspend fun deleteUser(user: User) = userDao.deleteUser(user)
    suspend fun deleteUserById(userId: String) = userDao.deleteUserById(userId)
    suspend fun deleteAllUsers() = userDao.deleteAllUsers()
} 