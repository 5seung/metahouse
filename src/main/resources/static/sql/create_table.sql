CREATE TABLE USER (
 user_id VARCHAR(20) NOT NULL,
 email VARCHAR(20) NULL,
 user_name VARCHAR(20) NULL,
 password VARCHAR(20) NULL,
 phone_number VARCHAR(20) NULL,
 gender VARCHAR(3) NULL,
 birth TIMESTAMP NULL,
 self_introduction VARCHAR(100) NULL,
 create_date TIMESTAMP NULL,
 last_login_date TIMESTAMP NULL,
 user_grade VARCHAR(10) NULL,
 mk_agree INTEGER NULL,
 point INTEGER NULL,
 thumbnail_store_filename VARCHAR(30) NULL
);

CREATE TABLE PROJECT (
 project_id INTEGER NOT NULL,
 creator_id VARCHAR(20) NOT NULL,
 tag VARCHAR(10) NULL,
 title VARCHAR(20) NULL,
 description VARCHAR(2000) NULL,
 project_date TIMESTAMP NULL,
 project_hits INTEGER NULL,
 category1 VARCHAR(10) NULL,
 category2_pj VARCHAR(10) NULL
);

CREATE TABLE PROJECT_PACKAGE_TRIPLE (
 project_id INTEGER NOT NULL,
 basic_pkg_title VARCHAR(30) NULL,
 basic_pkg_description VARCHAR(100) NULL,
 basic_price INTEGER NULL,
 basic_workdays INTEGER NULL,
 economy_pkg_title VARCHAR(30) NULL,
 economy_pkg_description VARCHAR(100) NULL,
 economy_price INTEGER NULL,
 economy_workdays INTEGER NULL,
 premium_pkg_title VARCHAR(30) NULL,
 premium_pkg_description VARCHAR(100) NULL,
 premium_price INTEGER NULL,
 premium_workdays INTEGER NULL
);

CREATE TABLE REVIEWS (
 review_id INTEGER NOT NULL,
 writer_id VARCHAR(20) NOT NULL,
 order_tag VARCHAR(30) NULL,
 rating INTEGER NULL,
 review_text VARCHAR(100) NULL,
 review_date TIMESTAMP NULL
);

CREATE TABLE ASSET_ORDERS (
 order_id INTEGER NOT NULL,
 asset_id INTEGER NOT NULL,
 buyer_id2 VARCHAR(20) NOT NULL,
 order_number VARCHAR(20) NULL,
 Field VARCHAR(255) NULL,
 asset_order_date DATE NULL
);

CREATE TABLE ASSETS (
 asset_id INTEGER NOT NULL,
 seller_id VARCHAR(20) NOT NULL,
 title VARCHAR(30) NULL,
 category1 VARCHAR(20) NULL,
 category2_as VARCHAR(20) NULL,
 description VARCHAR(2000) NULL,
 price INTEGER NULL,
 main_img BLOB NULL,
 asset_date DATE NULL,
 asset_hits INTEGER NULL
);

CREATE TABLE PROJECT_CONTENT (
 project_content_id INTEGER NOT NULL,
 project_id INTEGER NOT NULL,
 project_store_filename VARCHAR(50) NULL,
 project_file_no INTEGER NULL
);

CREATE TABLE LOGIN_HISTORY (
 login_history_id INTEGER NOT NULL,
 user_id VARCHAR(20) NOT NULL,
 login_time TIMESTAMP NULL,
 logout_time TIMESTAMP NULL
);

CREATE TABLE REVIEW_COMMENT (
 review_comment_id INTEGER NOT NULL,
 writer_id VARCHAR(20) NOT NULL,
 review_id INTEGER NOT NULL,
 comment_text VARCHAR(100) NULL,
 comment_date TIMESTAMP NULL
);

CREATE TABLE REVIEW_CONTENTS (
 review_contents_id INTEGER NOT NULL,
 review_id INTEGER NOT NULL,
 review_store_filename VARCHAR(100) NULL,
 review_img_no INTEGER NULL
);

CREATE TABLE ASSET_CONTENT (
 asset_content_id INTEGER NOT NULL,
 asset_id INTEGER NOT NULL,
 asset_store_filename VARCHAR(20) NULL,
 asset_fileno VARCHAR(20) NULL
);

CREATE TABLE PROJECT_ORDERS (
 order_id INTEGER NOT NULL,
 project_id INTEGER NOT NULL,
 buyer_id VARCHAR(20) NOT NULL,
 pre_order_status VARCHAR(20) NULL,
 order_commit_date DATETIME NULL,
 request varchar(100) NOT NULL
);

CREATE TABLE PROJECT_ORDERS_DETAIL (
 order_detail_id INTEGER NOT NULL,
 order_id INTEGER NOT NULL,
 order_status VARCHAR(20) NULL,
 order_date DATETIME NULL,
 completion_date DATETIME NULL,
 order_number VARCHAR(20) NULL
);

CREATE TABLE CHATROOM (
 chatroom_id INTEGER NOT NULL,
 user_1_id VARCHAR(20) NOT NULL,
 user_2_id VARCHAR(20) NOT NULL,
 tag VARCHAR(10) NULL,
 open_date TIMESTAMP NULL,
 Seller_info VARCHAR(20) NULL
);

CREATE TABLE NOTIFICATION (
 notification_id INTEGER NOT NULL,
 recipient_id VARCHAR(20) NOT NULL,
 type VARCHAR(20) NULL,
 content VARCHAR(50) NULL,
 is_read BOOLEAN NULL,
 sent_at TIMESTAMP NULL
);

CREATE TABLE MESSAGE (
 message_id INTEGER NOT NULL,
 writer_id VARCHAR(20) NOT NULL,
 chatroom_id INTEGER NOT NULL,
 write_time TIMESTAMP NULL,
 message_content VARCHAR(100) NULL
);

CREATE TABLE ADD_OPTION (
 add_option_id INTEGER NOT NULL,
 project_id INTEGER NOT NULL,
 add_option_name VARCHAR(20) NULL,
 add_option_price INTEGER NULL,
 add_option_description VARCHAR(300) NULL
);

CREATE TABLE CHARGE_POINT_INFO (
 change_point_info_id INTEGER NOT NULL,
 user_id VARCHAR(20) NOT NULL,
 charging_point INTEGER NULL,
 payment_method VARCHAR(10) NULL,
 remaining_point INTEGER NULL,
 charge_date TIMESTAMP NULL
);

CREATE TABLE Report (
 report_no VARCHAR(20) NOT NULL,
 state VARCHAR(10) NULL,
 user_id VARCHAR(20) NOT NULL,
 user_id2 VARCHAR(20) NOT NULL,
 report_reason VARCHAR(20) NULL,
 report_detail VARCHAR(300) NULL,
 report_datetime DATETIME NULL
);

CREATE TABLE PORTFOLIO (
 portfolio_id INTEGER NOT NULL,
 user_id VARCHAR(20) NOT NULL,
 category1 VARCHAR(20) NULL,
 category2 VARCHAR(20) NULL,
 portfolio_title VARCHAR(20) NULL,
 portfolio_pj_start_day TIMESTAMP NULL,
 protfolio_pj_end_day TIMESTAMP NULL,
 main_img VARCHAR(20) NULL,
 main_img_store_filename VARCHAR(20) NULL,
 portfolio_pj_content VARCHAR(500) NULL,
 portfolio_pj_point VARCHAR(500) NULL,
 portfolio_pj_style VARCHAR(500) NULL,
 portfolio_write_day TIMESTAMP NULL
);

CREATE TABLE PORTFOLIO_CONTENT_IMG (
 portfolio_pj_id INTEGER NOT NULL,
 portfolio_id INTEGER NOT NULL,
 pj_img_store_filename VARCHAR(20) NULL,
 pj_img_fileno INTEGER NULL
);

CREATE TABLE PORTFOLIO_POINT_IMG (
 portfolio_point_id INTEGER NOT NULL,
 portfolio_id INTEGER NOT NULL,
 point_img_store_filename VARCHAR(20) NULL,
 point_img_fileno INTEGER NULL
);

CREATE TABLE PORTFOLIO_STYLE_IMG (
 portfolio_style_id INTEGER NOT NULL,
 portfolio_id INTEGER NOT NULL,
 style_img_store_filename VARCHAR(20) NULL,
 style_img_fileno INTEGER NULL
);

CREATE TABLE PORTFOLIO_ATTACH_FILE (
 attach_file_id INTEGER NOT NULL,
 portfolio_id INTEGER NOT NULL,
 attach_filename VARCHAR(20) NULL,
 attach_store_filename VARCHAR(20) NULL,
 attach_fileno INTEGER NULL
);

CREATE TABLE CONSUME_POINT_INFO (
 consume_point_info_id INTEGER NOT NULL,
 user_id VARCHAR(20) NOT NULL,
 consuming_point INTEGER NULL,
 consume_info VARCHAR(10) NULL,
 remaining_point INTEGER NULL,
 consume_date TIMESTAMP NULL
);

CREATE TABLE ASSET_DETAIL_IMG (
 asset_detail_img_id INTEGER NOT NULL,
 asset_id INTEGER NOT NULL,
 asset_detail_img_store_filename VARCHAR(20) NULL,
 asset_fileno VARCHAR(20) NULL
);

CREATE TABLE SELECTED_ADD_OPTION (
 selected_add_option_id INTEGER NOT NULL,
 order_id INTEGER NOT NULL,
 add_option_id INTEGER NOT NULL,
 count INTEGER NULL
);

CREATE TABLE PROJECT_PACKAGE_SINGLE (
 project_id INTEGER NOT NULL,
 pkg_title VARCHAR(30) NULL,
 pkg_description VARCHAR(300) NULL,
 price INTEGER NULL,
 workdays INTEGER NULL
);

ALTER TABLE USER ADD CONSTRAINT PK_USER PRIMARY KEY (
 user_id
);

ALTER TABLE PROJECT ADD CONSTRAINT PK_PROJECT PRIMARY KEY (
 project_id
);

ALTER TABLE PROJECT_PACKAGE_TRIPLE ADD CONSTRAINT PK_PROJECT_PACKAGE_TRIPLE PRIMARY KEY (
 project_id
);

ALTER TABLE REVIEWS ADD CONSTRAINT PK_REVIEWS PRIMARY KEY (
 review_id
);

ALTER TABLE ASSET_ORDERS ADD CONSTRAINT PK_ASSET_ORDERS PRIMARY KEY (
 order_id
);

ALTER TABLE ASSETS ADD CONSTRAINT PK_ASSETS PRIMARY KEY (
 asset_id
);

ALTER TABLE PROJECT_CONTENT ADD CONSTRAINT PK_PROJECT_CONTENT PRIMARY KEY (
 project_content_id
);

ALTER TABLE LOGIN_HISTORY ADD CONSTRAINT PK_LOGIN_HISTORY PRIMARY KEY (
 login_history_id
);

ALTER TABLE REVIEW_COMMENT ADD CONSTRAINT PK_REVIEW_COMMENT PRIMARY KEY (
 review_comment_id
);

ALTER TABLE REVIEW_CONTENTS ADD CONSTRAINT PK_REVIEW_CONTENTS PRIMARY KEY (
 review_contents_id
);

ALTER TABLE ASSET_CONTENT ADD CONSTRAINT PK_ASSET_CONTENT PRIMARY KEY (
 asset_content_id
);

ALTER TABLE PROJECT_ORDERS ADD CONSTRAINT PK_PROJECT_ORDERS PRIMARY KEY (
 order_id
);

ALTER TABLE PROJECT_ORDERS_DETAIL ADD CONSTRAINT PK_PROJECT_ORDERS_DETAIL PRIMARY KEY (
 order_detail_id
);

ALTER TABLE CHATROOM ADD CONSTRAINT PK_CHATROOM PRIMARY KEY (
 chatroom_id
);

ALTER TABLE NOTIFICATION ADD CONSTRAINT PK_NOTIFICATION PRIMARY KEY (
 notification_id
);

ALTER TABLE MESSAGE ADD CONSTRAINT PK_MESSAGE PRIMARY KEY (
 message_id
);

ALTER TABLE ADD_OPTION ADD CONSTRAINT PK_ADD_OPTION PRIMARY KEY (
 add_option_id
);

ALTER TABLE CHARGE_POINT_INFO ADD CONSTRAINT PK_CHARGE_POINT_INFO PRIMARY KEY (
 change_point_info_id
);

ALTER TABLE Report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
 report_no
);

ALTER TABLE PORTFOLIO ADD CONSTRAINT PK_PORTFOLIO PRIMARY KEY (
 portfolio_id
);

ALTER TABLE PORTFOLIO_CONTENT_IMG ADD CONSTRAINT PK_PORTFOLIO_CONTENT_IMG PRIMARY KEY (
 portfolio_pj_id
);

ALTER TABLE PORTFOLIO_POINT_IMG ADD CONSTRAINT PK_PORTFOLIO_POINT_IMG PRIMARY KEY (
 portfolio_point_id
);

ALTER TABLE PORTFOLIO_STYLE_IMG ADD CONSTRAINT PK_PORTFOLIO_STYLE_IMG PRIMARY KEY (
 portfolio_style_id
);

ALTER TABLE PORTFOLIO_ATTACH_FILE ADD CONSTRAINT PK_PORTFOLIO_ATTACH_FILE PRIMARY KEY (
 attach_file_id
);

ALTER TABLE CONSUME_POINT_INFO ADD CONSTRAINT PK_CONSUME_POINT_INFO PRIMARY KEY (
 consume_point_info_id
);

ALTER TABLE ASSET_DETAIL_IMG ADD CONSTRAINT PK_ASSET_DETAIL_IMG PRIMARY KEY (
 asset_detail_img_id
);

ALTER TABLE SELECTED_ADD_OPTION ADD CONSTRAINT PK_SELECTED_ADD_OPTION PRIMARY KEY (
 selected_add_option_id
);

ALTER TABLE PROJECT_PACKAGE_SINGLE ADD CONSTRAINT PK_PROJECT_PACKAGE_SINGLE PRIMARY KEY (
 project_id
);

ALTER TABLE PROJECT ADD CONSTRAINT FK_USER_TO_PROJECT_1 FOREIGN KEY (
 creator_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE PROJECT_PACKAGE_TRIPLE ADD CONSTRAINT FK_PROJECT_TO_PROJECT_PACKAGE_TRIPLE_1 FOREIGN KEY (
 project_id
)
REFERENCES PROJECT (
 project_id
);

ALTER TABLE REVIEWS ADD CONSTRAINT FK_USER_TO_REVIEWS_1 FOREIGN KEY (
 writer_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE ASSET_ORDERS ADD CONSTRAINT FK_ASSETS_TO_ASSET_ORDERS_1 FOREIGN KEY (
 asset_id
)
REFERENCES ASSETS (
 asset_id
);

ALTER TABLE ASSET_ORDERS ADD CONSTRAINT FK_USER_TO_ASSET_ORDERS_1 FOREIGN KEY (
 buyer_id2
)
REFERENCES USER (
 user_id
);

ALTER TABLE ASSETS ADD CONSTRAINT FK_USER_TO_ASSETS_1 FOREIGN KEY (
 seller_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE PROJECT_CONTENT ADD CONSTRAINT FK_PROJECT_TO_PROJECT_CONTENT_1 FOREIGN KEY (
 project_id
)
REFERENCES PROJECT (
 project_id
);

ALTER TABLE LOGIN_HISTORY ADD CONSTRAINT FK_USER_TO_LOGIN_HISTORY_1 FOREIGN KEY (
 user_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE REVIEW_COMMENT ADD CONSTRAINT FK_USER_TO_REVIEW_COMMENT_1 FOREIGN KEY (
 writer_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE REVIEW_COMMENT ADD CONSTRAINT FK_REVIEWS_TO_REVIEW_COMMENT_1 FOREIGN KEY (
 review_id
)
REFERENCES REVIEWS (
 review_id
);

ALTER TABLE REVIEW_CONTENTS ADD CONSTRAINT FK_REVIEWS_TO_REVIEW_CONTENTS_1 FOREIGN KEY (
 review_id
)
REFERENCES REVIEWS (
 review_id
);

ALTER TABLE ASSET_CONTENT ADD CONSTRAINT FK_ASSETS_TO_ASSET_CONTENT_1 FOREIGN KEY (
 asset_id
)
REFERENCES ASSETS (
 asset_id
);

ALTER TABLE PROJECT_ORDERS ADD CONSTRAINT FK_PROJECT_TO_PROJECT_ORDERS_1 FOREIGN KEY (
 project_id
)
REFERENCES PROJECT (
 project_id
);

ALTER TABLE PROJECT_ORDERS ADD CONSTRAINT FK_USER_TO_PROJECT_ORDERS_1 FOREIGN KEY (
 buyer_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE PROJECT_ORDERS_DETAIL ADD CONSTRAINT FK_PROJECT_ORDERS_TO_PROJECT_ORDERS_DETAIL_1 FOREIGN KEY (
 order_id
)
REFERENCES PROJECT_ORDERS (
 order_id
);

ALTER TABLE CHATROOM ADD CONSTRAINT FK_USER_TO_CHATROOM_1 FOREIGN KEY (
 user_1_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE CHATROOM ADD CONSTRAINT FK_USER_TO_CHATROOM_2 FOREIGN KEY (
 user_2_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE NOTIFICATION ADD CONSTRAINT FK_USER_TO_NOTIFICATION_1 FOREIGN KEY (
 recipient_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE MESSAGE ADD CONSTRAINT FK_USER_TO_MESSAGE_1 FOREIGN KEY (
 writer_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE MESSAGE ADD CONSTRAINT FK_CHATROOM_TO_MESSAGE_1 FOREIGN KEY (
 chatroom_id
)
REFERENCES CHATROOM (
 chatroom_id
);

ALTER TABLE ADD_OPTION ADD CONSTRAINT FK_PROJECT_TO_ADD_OPTION_1 FOREIGN KEY (
 project_id
)
REFERENCES PROJECT (
 project_id
);

ALTER TABLE CHARGE_POINT_INFO ADD CONSTRAINT FK_USER_TO_CHARGE_POINT_INFO_1 FOREIGN KEY (
 user_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE Report ADD CONSTRAINT FK_USER_TO_Report_1 FOREIGN KEY (
 user_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE Report ADD CONSTRAINT FK_USER_TO_Report_2 FOREIGN KEY (
 user_id2
)
REFERENCES USER (
 user_id
);

ALTER TABLE PORTFOLIO ADD CONSTRAINT FK_USER_TO_PORTFOLIO_1 FOREIGN KEY (
 user_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE PORTFOLIO_CONTENT_IMG ADD CONSTRAINT FK_PORTFOLIO_TO_PORTFOLIO_CONTENT_IMG_1 FOREIGN KEY (
 portfolio_id
)
REFERENCES PORTFOLIO (
 portfolio_id
);

ALTER TABLE PORTFOLIO_POINT_IMG ADD CONSTRAINT FK_PORTFOLIO_TO_PORTFOLIO_POINT_IMG_1 FOREIGN KEY (
 portfolio_id
)
REFERENCES PORTFOLIO (
 portfolio_id
);

ALTER TABLE PORTFOLIO_STYLE_IMG ADD CONSTRAINT FK_PORTFOLIO_TO_PORTFOLIO_STYLE_IMG_1 FOREIGN KEY (
 portfolio_id
)
REFERENCES PORTFOLIO (
 portfolio_id
);

ALTER TABLE PORTFOLIO_ATTACH_FILE ADD CONSTRAINT FK_PORTFOLIO_TO_PORTFOLIO_ATTACH_FILE_1 FOREIGN KEY (
 portfolio_id
)
REFERENCES PORTFOLIO (
 portfolio_id
);

ALTER TABLE CONSUME_POINT_INFO ADD CONSTRAINT FK_USER_TO_CONSUME_POINT_INFO_1 FOREIGN KEY (
 user_id
)
REFERENCES USER (
 user_id
);

ALTER TABLE ASSET_DETAIL_IMG ADD CONSTRAINT FK_ASSETS_TO_ASSET_DETAIL_IMG_1 FOREIGN KEY (
 asset_id
)
REFERENCES ASSETS (
 asset_id
);

ALTER TABLE SELECTED_ADD_OPTION ADD CONSTRAINT FK_PROJECT_ORDERS_TO_SELECTED_ADD_OPTION_1 FOREIGN KEY (
 order_id
)
REFERENCES PROJECT_ORDERS (
 order_id
);

ALTER TABLE SELECTED_ADD_OPTION ADD CONSTRAINT FK_ADD_OPTION_TO_SELECTED_ADD_OPTION_1 FOREIGN KEY (
 add_option_id
)
REFERENCES ADD_OPTION (
 add_option_id
);

ALTER TABLE PROJECT_PACKAGE_SINGLE ADD CONSTRAINT FK_PROJECT_TO_PROJECT_PACKAGE_SINGLE_1 FOREIGN KEY (
 project_id
)
REFERENCES PROJECT (
 project_id
);
