use booking;

CREATE TABLE flight (
  id int(11) NOT NULL AUTO_INCREMENT,
  airlines varchar(100) NOT NULL,
  flight_number varchar(100) NOT NULL,
  source varchar(100) NOT NULL,
  destination varchar(100) NOT NULL,
  departure varchar(100) NOT NULL,
  available_seats integer NOT NULL,
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

insert into flight (airlines,flight_number,source,destination,departure, available_seats) values('Smart Air','SA_1', 'KL','DEL','14:00 GMT Sunday, 30th June 2019', 10);
