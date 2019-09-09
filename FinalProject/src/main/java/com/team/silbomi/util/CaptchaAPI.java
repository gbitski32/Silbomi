package com.team.silbomi.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

public class CaptchaAPI {
	private String clientId = "dtoAdkeGPzZrtk3rCiZr";
	private String clientSecret = "3uj8iA7ZDG";

	public String captchaNkey() {
		String result = null;

		try {
			String code = "0";
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", this.clientId);
			con.setRequestProperty("X-Naver-Client-Secret", this.clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}

			StringBuffer sb = new StringBuffer();

			String inputLine;
			while ((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}

			br.close();
			System.out.println("key 내용 : " + sb.toString());
			result = sb.toString().substring(8, 24);
		} catch (Exception var10) {
			System.out.println(var10);
		}

		return result;
	}

	public String captchaImage(String key, String dirPath) {
		String result = null;

		try {
			String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", this.clientId);
			con.setRequestProperty("X-Naver-Client-Secret", this.clientSecret);
			int responseCode = con.getResponseCode();
			if (responseCode == 200) {
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];
				String tempname = Long.valueOf((new Date()).getTime()).toString();
				File f = new File(dirPath + File.separator + tempname + ".jpg");
				f.createNewFile();
				FileOutputStream outputStream = new FileOutputStream(f);

				while ((read = is.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}

				result = "/silbomi/resources/captchaImg/" + tempname + ".jpg";
				outputStream.close();
				is.close();
				System.out.println("이미지 : " + result);
			} else {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				StringBuffer sb = new StringBuffer();

				String inputLine;
				while ((inputLine = br.readLine()) != null) {
					sb.append(inputLine);
				}

				br.close();
				System.out.println(sb.toString());
			}
		} catch (Exception var15) {
			var15.printStackTrace();
		}

		return result;
	}

	public String captchaNkeyResult(String key, String value) {
		String result = null;

		try {
			String code = "1";
			System.out.println("key >>> " + key + " value >>> " + value);
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
					+ value;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", this.clientId);
			con.setRequestProperty("X-Naver-Client-Secret", this.clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}

			StringBuffer sb = new StringBuffer();

			String inputLine;
			while ((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}

			br.close();
			System.out.println("결과값 : " + sb.toString());
			result = sb.toString().substring(10, 14);
		} catch (Exception var12) {
			var12.printStackTrace();
		}

		return result;
	}

	public void deleteImg(String dirPath, String fileName) {
		File f = new File(dirPath + File.separator + fileName);
		if (f.exists()) {
			f.delete();
		}

	}

	public void deleteAll(String dirPath) {
		File f = new File(dirPath);
		System.out.println("deleteAll 파일 경로 : " + dirPath);
		if (f.exists()) {
			System.out.println("파일이 존재합니다");
			if (f.isDirectory()) {
				System.out.println("파일이 디렉토리입니다");
				File[] files = f.listFiles();

				for (int i = 0; i < files.length; ++i) {
					System.out.println(files[i].getName() + " 삭제합니다");
					files[i].delete();
				}
			}
		}

	}
}