package com.steven.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steven.entity.Meters;
import com.steven.entity.Operators;
import com.steven.entity.Ptyh;
import com.steven.mapper.OperatorMapper;

@Service
public class OperatorServiceImpl implements OperatorService{
	@Autowired
	OperatorMapper operatorMapper;

	@Override
	public List<Operators> olist() {
		//System.out.println(operatorMapper.olist());
		return operatorMapper.olist();
	}

	@Override
	public void delete(String ono) {
		operatorMapper.delete(ono);
		
	}

	@Override
	public void add(String num, String name, String email, String phone, String ques, String answ, String password) {
		operatorMapper.add(num,name,email,phone,ques,answ,password);
		
	}

	@Override
	public List<Operators> getOprByName(String oname) {
		return operatorMapper.nameolist(oname);
	}

	@Override
	public String getStateByOno(String ono) {
		return operatorMapper.getStateByOno(ono);
	}

	@Override
	public void updateOperator(String ostate,String ono) {
		operatorMapper.updateOperator(ostate,ono);
		
	}

	@Override
	public List<Ptyh> plist() {
		return operatorMapper.plist();
	}

	@Override
	public List<Ptyh> getPtyhByName(String pname) {
		return operatorMapper.ptyhlistbn(pname);
	}

	@Override
	public String getStateByPno(String pno) {
		return operatorMapper.getStateByPno(pno);
	}

	@Override
	public void deletePtyh(String pno) {
		operatorMapper.deletePtyh(pno);
		
	}

	@Override
	public void addPtyh(String num, String name, String email, String phone, String ques, String answ,
			String password) {
		operatorMapper.addPtyh(num,name,email,phone,ques,answ,password);
		
	}

	@Override
	public void updatePtyh(String pstate, String pno) {
		operatorMapper.updatePtyh(pstate,pno);
		
	}

	@Override
	public List<Meters> emzlist() {
		return operatorMapper.emzlist();
	}

	@Override
	public List<Meters> emalist() {
		return operatorMapper.emalist();
	}

	@Override
	public List<Meters> emblist() {
		return operatorMapper.emblist();
	}

	@Override
	public List<Meters> emclist() {
		return operatorMapper.emclist();
	}

	@Override
	public List<Meters> emzlistsear(String timenow, String seqnumber) {
		return operatorMapper.emzlistsear(timenow,seqnumber);
	}

	@Override
	public List<Meters> emalistsear(String timenow, String seqnumber) {
		return operatorMapper.emalistsear(timenow,seqnumber);
	}

	@Override
	public List<Meters> emblistsear(String timenow, String seqnumber) {
		return operatorMapper.emblistsear(timenow,seqnumber);
	}

	@Override
	public List<Meters> emclistsear(String timenow, String seqnumber) {
		return operatorMapper.emclistsear(timenow,seqnumber);
	}

	@Override
	public void upgrade(String name) {
		operatorMapper.upgrade(name);
		
	}

}
