package poly.bummshop.common;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.xml.bind.DatatypeConverter;

public class BaseUtils {

	// Password encryption - Mã hóa mật khẩu
	public static String encryptPassword(String password) {
		String sha1 = null;
		try {
			MessageDigest msdDigest = MessageDigest.getInstance("SHA-1");
			msdDigest.update(password.getBytes("UTF-8"), 0, password.length());
			sha1 = DatatypeConverter.printHexBinary(msdDigest.digest());
		} catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return sha1.toLowerCase();
	}

	// Date format (YYYY-MM-DD).
	public static String formatDate(Date date, String format) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
		if (format.equals("")) {
			simpleDateFormat.applyPattern("YYYY-MM-DD");
		} else {
			simpleDateFormat.applyPattern(format);
		}
		return simpleDateFormat.format(date);
	}

	// Count total page.
	public static int countTotalPage(int total, int maxResult) {
		int page = total / maxResult;
		if (total % maxResult > 0) {
			page++;
		}
		return page;
	}

}
