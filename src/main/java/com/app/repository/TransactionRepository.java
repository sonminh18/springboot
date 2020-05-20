package com.app.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.model.Transaction;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Long>{

}