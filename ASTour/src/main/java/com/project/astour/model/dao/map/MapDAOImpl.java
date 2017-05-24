package com.project.astour.model.dao.map;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;

@Repository
public class MapDAOImpl implements MapDAO{

	@Inject
	SqlSession sqlSession;
	private List<String> test03;
	
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("map.Info");
	}

	@Override
	public List<sigunVO> sigunList() {
		
		return sqlSession.selectList("map.sigun");
	}

	@Override
	public List<sigunVO> gunList(String name) {
		
		return sqlSession.selectList("map.gunList",name);
	}

	@Override
	public List<attraction_tbl> searchLocation(attraction_tbl vo) {
		/*String test02 = "";
		if(si.equals("0")){
			System.out.println("si가 선택되지 않았다");
		}else{
			test02 += " acity like '"+si+"%";
			if(!gun.equals("0")){
				System.out.println("gun이 선택되었다");
				test02 += " and agu like "+gun+"%";
			}
		}
		
		if(event.equals("0")){
			System.out.println("행사 선택되지 않음");
		}else{
			if(!test02.equals("")){
				test02 += " and ";
			}
			test02 += "asort="+gun+"";
		}
		
		if(input.equals("")){
			System.out.println("입력된 텍스트 없음");
		}else{
			if(!test02.equals("")){
				test02 += " and ";
			}
			test02 += "atitle like '%"+input+"%'";
		}
		
		System.out.println(test02);
		
		*/
		
		return sqlSession.selectList("map.searchLocation", vo);
	}
	
	
	
}
