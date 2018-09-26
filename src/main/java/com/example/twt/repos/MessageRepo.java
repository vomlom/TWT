//package com.examle.twt.repos;
//
//import Message;
//import org.springframework.data.repository.CrudRepository;
//
//import java.util.List;
//
//public interface MessageRepo extends CrudRepository<Message, Long> {
//
//   List<Message> findByTag(String tag);
//}
package com.example.twt.repos;
import com.example.twt.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
   List<Message> findByTag(String tag);
}
