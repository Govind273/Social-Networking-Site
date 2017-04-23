package edu.iu.club.connect.service.serviceInterface;

import java.util.List;

import edu.iu.club.connect.model.JobDetailsModel;

public interface JobDetailsService {

	public boolean saveOne(JobDetailsModel jobDetailsModel);
	public List<JobDetailsModel> findAllJobsById(Integer userId);
	
	public void edit(JobDetailsModel jobdetailmodel);
	public void deleteOne(int jobdetails_Id);
}
