package com.vilt.tvshows.service;

import java.io.IOException;

public interface TraktAdapterService {

	public String getEpisodeList(String tvshowName, String season) throws IOException;

}