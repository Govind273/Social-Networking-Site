package edu.iu.club.connect.service.serviceImplementation;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.model.EducationalDetailsModel;
import edu.iu.club.connect.service.repository.EducationDetailsRepository;
import edu.iu.club.connect.service.serviceInterface.EducationDetailsService;

@Service
public class EducationDetailsServiceImplementation implements EducationDetailsService  {

	  @Autowired
	  EducationDetailsRepository educationDetailsRepository;

	
	@Override
	public boolean saveOne(EducationalDetailsModel educationalDetailsModel) {
		// TODO Auto-generated method stub
		educationDetailsRepository.save(educationalDetailsModel);
		return true;
	}

	@Override
	public List<EducationalDetailsModel> findAllEduById(Integer userId) {
		// TODO Auto-generated method stub
		List<EducationalDetailsModel> myEducationDetails = educationDetailsRepository.findByUserId(userId);
		return myEducationDetails;
	}

	@Override
	public void edit(EducationalDetailsModel educationalDetailsModel) {
		// TODO Auto-generated method stub
		educationDetailsRepository.updateOne(educationalDetailsModel.getDescription(),educationalDetailsModel.getMajor(),
				educationalDetailsModel.getEduDetailsId(),educationalDetailsModel.getSkills(),educationalDetailsModel.getSchool());
		
	}

	@Override
	public void deleteOne(int eduDetailsId) {
		// TODO Auto-generated method stub
		educationDetailsRepository.delete(eduDetailsId);
		
	}

}
