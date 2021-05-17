To run the project =====>
->Add mysql database on localhost
->Name it `temp`
->Create a new table by running following script :

CREATE TABLE `tbl_users` (
  `UserName` text NOT NULL,
  `Badge` varchar(15) NOT NULL,
  `EnrollNo` varchar(15) NOT NULL,
  `Department` varchar(15) NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

Now you're good to go. 
here are the connection strings for deployed app
MySqlConnection(@"Server=MYSQL5045.site4now.net;Database=db_a74404_temp;Uid=a74404_temp;Pwd=pradip1234");
        public MySqlConnection groups_db = new MySqlConnection(@"Server=MYSQL5045.site4now.net;Database=db_a74404_temp;Uid=a74404_temp;Pwd=pradip1234");
        public MySqlConnection ntf = new MySqlConnection(@"Server=MYSQL5045.site4now.net;Database=db_a74404_temp;Uid=a74404_temp;Pwd=pradip1234; Convert Zero Datetime=True");

