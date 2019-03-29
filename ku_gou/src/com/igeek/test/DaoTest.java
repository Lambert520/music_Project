package com.igeek.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.igeek.Dao.albumDao;
import com.igeek.Dao.musicDao;
import com.igeek.pojo.Album;
import com.igeek.pojo.Music;

public class DaoTest {
//	/**
//	 * 单元测试
//	 */
//	@Test
//	public void testAlbumDao(){
//		//创建allbumDao对象
//		albumDao albumDao = new albumDao();
//		Album album = albumDao.findAlbumById(1);
//	}
//	
//	/**
//	 * 在入口函数中直接测试
//	 * @param args
//	 */
	public static void main(String[] args) {
//		albumDao allbumDao = new albumDao();
//		Album album = allbumDao.findAlbumById(1);
//		if(album != null){
//			System.out.println(album.getAlbumName()+"\t"+album.getCreateUser()+"\t"+album.getModifyTime());
//		}
//		else{
//			System.out.println("未找到歌单数据!");
//		}
		//测试findTopFiveAllbums()函数
//		List<Album> list = allbumDao.findTopFiveAllbums();
//		for(Album album1 : list){
//			System.out.println(album1.getAlbumName()+"\t"+album1.getClickCount()+"\t"+album1.getImage());
//		}
//		musicDao musicDao = new musicDao();
//		Music music = musicDao.findMusicById(1);
//		if(music !=null){
//			System.out.println(music.getMusicName()+"\t"+music.getSinger());
//		}
//		else{
//			System.out.println("未找到歌曲数据");
//		}
		musicDao musicDao = new musicDao();
		List<Music> list = musicDao.findMusicsByAlbumId(1);
		for(Music music1 :list){
			System.out.println(music1.getMusicName()+"\t"+music1.getSinger());
		}
	}
}
