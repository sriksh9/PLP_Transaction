package com.cg.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.cg.demo.model.Transaction;

public interface TransactionRepo extends CrudRepository<Transaction, Long> {

}
