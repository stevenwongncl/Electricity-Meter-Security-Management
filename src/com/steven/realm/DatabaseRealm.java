package com.steven.realm;

import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.steven.service.ElecuserService;
import com.steven.service.PermissionService;
import com.steven.service.RoleService;
import com.steven.service.UserService;

public class DatabaseRealm extends AuthorizingRealm{
	@Autowired
	private ElecuserService elecuserService;
	@Autowired
	private RoleService roleService;
/*	@Autowired
	private PermissionService permissionService;*/
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		//鑳借繘鍏ュ埌杩欓噷锛岃〃绀鸿处鍙峰凡缁忛�氳繃楠岃瘉浜�
		String userName =(String) principalCollection.getPrimaryPrincipal();
		//閫氳繃service鑾峰彇瑙掕壊鍜屾潈闄�
	//	Set<String> permissions = permissionService.listPermissions(userName);
		
		Set<String> roles = roleService.listRoles(userName);
		
		//鎺堟潈瀵硅薄
		SimpleAuthorizationInfo s = new SimpleAuthorizationInfo();
		//鎶婇�氳繃service鑾峰彇鍒扮殑瑙掕壊鍜屾潈闄愭斁杩涘幓
	//	s.setStringPermissions(permissions);
		s.setRoles(roles);
		 System.out.println("权限为："+roles);
		return s;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		//鑾峰彇璐﹀彿瀵嗙爜
		UsernamePasswordToken t = (UsernamePasswordToken) token;
		String userName= token.getPrincipal().toString();
		String password= new String( t.getPassword());
		//鑾峰彇鏁版嵁搴撲腑鐨勫瘑鐮�
		String passwordInDB = elecuserService.getPassword(userName);
        //输入的密码加密处理后
		String passwordEncoded = new SimpleHash("md5",password,"wjl",2).toString();
		System.out.println("加密后密码的值为："+passwordEncoded);
		System.out.println("获取到的用户名为："+userName);
		System.out.println("从数据库返回的密码为："+passwordInDB);
		//濡傛灉涓虹┖灏辨槸璐﹀彿涓嶅瓨鍦紝濡傛灉涓嶇浉鍚屽氨鏄瘑鐮侀敊璇紝浣嗘槸閮芥姏鍑篈uthenticationException锛岃�屼笉鏄姏鍑哄叿浣撻敊璇師鍥狅紝鍏嶅緱缁欑牬瑙ｈ�呮彁渚涘府鍔╀俊鎭�
		if(null==passwordInDB || !passwordInDB.equals(passwordEncoded)) 
			throw new AuthenticationException();
		
		//璁よ瘉淇℃伅閲屽瓨鏀捐处鍙峰瘑鐮�, getName() 鏄綋鍓峈ealm鐨勭户鎵挎柟娉�,閫氬父杩斿洖褰撳墠绫诲悕 :databaseRealm
		SimpleAuthenticationInfo a = new SimpleAuthenticationInfo(userName,password,getName());
		return a;
	}


}
