package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by walia on 2/19/2017.
 */

@Repository
public interface GroupRepository extends JpaRepository<GroupModel,Integer> {
}
