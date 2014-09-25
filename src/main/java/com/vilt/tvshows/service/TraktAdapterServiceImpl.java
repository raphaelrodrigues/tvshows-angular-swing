package com.vilt.tvshows.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

@Service
public class TraktAdapterServiceImpl implements TraktAdapterService {

	private static String apiKey = "19e908d9efe25b6e40eb34fc2cf315f4";
	private URL url;
	private HttpURLConnection conn = null;

	/* (non-Javadoc)
	 * @see com.vilt.tvshows.service.TraktAdapterService#getEpisodeList(java.lang.String, java.lang.String)
	 */
	public String getEpisodeList(String tvshowName, String season) throws IOException {
		try {
			url = new URL("http://api.trakt.tv/show/season.json/" + apiKey + "/" + tvshowName + "/" + season);

			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code sdsdsdsd: " + tvshowName +"   "+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			String output,info = new String();
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				info+=output;
			}

			return info;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}

	}
}
