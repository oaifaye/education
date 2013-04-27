package com.dao;

import java.util.List;

import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.EduCounselingFirstInfo;
import com.bean.EduCounselingSecondInfo;
import com.bean.GradeInfo;
import com.bean.RegionFirstInfo;
import com.bean.RegionSecondInfo;

public interface InfoDAO {
	
	/**添加大区*/
	public void saveRegFirst(RegionFirstInfo regionFirstInfo);
	/**查询全部大区*/
	public List<RegionFirstInfo> findAllRegionFirstInfo();
	/**添加地区*/
	public void saveRegSecond(RegionSecondInfo regionSecondInfo);
	/**按id删除地区*/
	public void delRegSecond(String regSecondId);
	/**查询所有地区*/
	public List<RegionSecondInfo> findAllRegionSecondInfo();
	/**按大区id查询地区*/
	public List<RegionSecondInfo> findRegionSecondInfoByFirst(String regFirstId);
	/**添加校区*/
	public void saveCampus(CampusInfo campusInfo);
	/**添加年级*/
	public void saveGrade(GradeInfo gradeInfo);
	/**查询所有年级*/
	public List<GradeInfo> findAllGradeInfo();
	/**按年级id查询年级*/
	public GradeInfo findGradeById(String gradeId);
	/**添加科目*/
	public void saveCourse(CourseInfo courseInfo);
	/**查询全部科目*/
	public List<CourseInfo> findAllCourseInfo();
	/**按科目id查询科目*/
	public CourseInfo findCourseById(String courseId);
	/**按年级id查询科目*/
	public List<CourseInfo> findCourseByGrade(String gradeId);
	/**添加教育资讯一级*/
	public void saveEduCounselingFirst(EduCounselingFirstInfo eduCounselingFirstInfo);
	/**按id查询教育资讯一级*/
	public EduCounselingFirstInfo findEduCounselingFirstById(String eduCounselingFirstId);
	/** 按id删除教育资讯一级*/
	public void delEduCounselingFirst(String eduCounselingFirstId);
	/**查询所有教育资讯一级*/
	public List<EduCounselingFirstInfo> findAllEduCounselingFirst();
	/**添加教育资讯二级*/
	public void saveEduCounselingSecond(EduCounselingSecondInfo eduCounselingSecondInfo);
	/**按id查询教育资讯二级*/
	public EduCounselingSecondInfo findEduCounselingSecondById(String eduCounselingSecondId);
	/** 按id删除教育资讯二级*/
	public void delEduCounselingSecond(String eduCounselingSecondId);
	/**查询所有教育资讯二级*/
	public List<EduCounselingSecondInfo> findAllEduCounselingSecond();
	/**按教育资讯一级id查询教育资讯二级*/
	public List<EduCounselingSecondInfo> findEduCounselingSecondByFirst(String eduCounselingFirstId);
	
}
