package com.steven.service;

import java.util.List;

import com.steven.entity.Meters;
import com.steven.entity.Operators;
import com.steven.entity.Ptyh;

public interface OperatorService {

	List<Operators> olist();

	void delete(String ono);

	void add(String num, String name, String email, String phone, String ques, String answ, String password);

	List<Operators> getOprByName(String oname);

	String getStateByOno(String ono);

	void updateOperator(String ostate, String ono);

	List<Ptyh> plist();

	List<Ptyh> getPtyhByName(String pname);

	String getStateByPno(String pno);

	void deletePtyh(String pno);

	void addPtyh(String num, String name, String email, String phone, String ques, String answ, String password);

	void updatePtyh(String pstate, String pno);

	List<Meters> emzlist();

	List<Meters> emalist();

	List<Meters> emblist();

	List<Meters> emclist();

	List<Meters> emzlistsear(String timenow, String seqnumber);

	List<Meters> emalistsear(String timenow, String seqnumber);

	List<Meters> emblistsear(String timenow, String seqnumber);

	List<Meters> emclistsear(String timenow, String seqnumber);

	void upgrade(String name);

}
