package edu.iu.club.connect.service.serviceInterface;

import java.util.List;

import edu.iu.club.connect.model.EducationalDetailsModel;

public interface EducationDetailsService {
	public boolean saveOne(EducationalDetailsModel educationalDetailsModel);
	public List<EducationalDetailsModel> findAllEduById(Integer userId);
	
	public void edit(EducationalDetailsModel educationalDetailsModel);
	public void deleteOne(int eduDetailsId);
	
	
}
