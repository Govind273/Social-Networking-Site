package edu.iu.club.connect.service.serviceImplementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.JobDetailsModel;
import edu.iu.club.connect.service.repository.JobDetailsRepository;
import edu.iu.club.connect.service.serviceInterface.JobDetailsService;

@Service
public class JobDetailsServiceImplementation implements JobDetailsService {
	
	  @Autowired
	  JobDetailsRepository jobDetailsRepository;
	  
	  @Override
	    public boolean saveOne(JobDetailsModel jobDetailsModel) {
		  jobDetailsRepository.save(jobDetailsModel);
	        return true;
	    }

	@Override
	public List<JobDetailsModel> findAllJobsById(Integer userId) {
		// TODO Auto-generated method stub
		List<JobDetailsModel> myjobs = jobDetailsRepository.findGroupsByUserId(userId);
		
		return myjobs;
	}
	@Override
	public void deleteOne(int jobdetails_Id) {
		// TODO Auto-generated method stub
		jobDetailsRepository.delete(jobdetails_Id);
		
	}
	@Override
	public void edit(JobDetailsModel jobDetailsModel) {
		// TODO Auto-generated method stub
		jobDetailsRepository.updateOne(jobDetailsModel.getJobDesc(),jobDetailsModel.getCompany(),
				jobDetailsModel.getJobdetails_Id(),jobDetailsModel.getPosition(),jobDetailsModel.getSkills());
		
	}
}
