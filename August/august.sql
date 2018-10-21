create table sss_customer(
  cu_id varchar(20)   primary key ,
  customer_name       varchar(20),
  customer_psd        varchar(20),
  customer_gen        char(10),
  brithday            datetime,
  tel                 varchar(20),
  address             varchar(20),
  comment             varchar(100)

);

  create table sss_order(
  order_id          varchar(20) primary key ,
  car_id            varchar(20),
  FOREIGN KEY(car_id) REFERENCES sss_car(car_id),
  cu_id             varchar(20),
  FOREIGN KEY(cu_id) REFERENCES sss_customer(cu_id),
  post_name        varchar(20),
  post_p_Tel         varchar(20),
  post_p_addr        varchar(50),
  get_p_name         varchar(20),
  get_p_tel          varchar(20),
  get_p_addr         varchar(50),
  goods_name        varchar(100),
  good_weight       int,
  order_type        varchar(10),
  order_state       varchar(20),
  transport_price   decimal(20),
  delivery_price    decimal(20),
  total_price       varchar(20),
  comment           varchar(100)
);

create table sss_car(
  car_id        varchar(20) primary key ,
  route_id      varchar(20),
  FOREIGN KEY(route_id) REFERENCES sss_route(route_id),
  car_type      varchar(20),
  car_origin    varchar(20),
  car_pro_date   datetime ,
  car_buy_date   datetime,
  car_capacity  int,
  car_state     bit,
  comment       varchar(100)

);

create table sss_privance(
  province_id   varchar(20)   primary key ,
  province_name varchar(20)
);

create table sss_route(
  route_id        varchar(20) primary key ,
  city_id        varchar(20),
  FOREIGN KEY(city_id) REFERENCES sss_city(city_id),
  province_id     varchar(20),
  FOREIGN KEY(province_id) REFERENCES sss_privance(province_id),
  route_name      varchar(20),
  start_province  varchar(20),
  start_city      varchar(20),
  end_province    varchar(20),
  end_city        varchar(20),
  mid_province    varchar(20),
  mid_city        varchar(20),
  transport_price decimal(20),
  comment         varchar(100)
);


create table sss_city(
  city_id         varchar(20) primary key ,
  province_id     varchar(20),
  FOREIGN KEY(province_id) REFERENCES sss_privance(province_id),
  city_name       varchar(20),
  province_name   varchar(20)

);


create table sss_manger(
  mg_id        varchar(20) primary key ,
  role_id       varchar(20),
  FOREIGN KEY(role_id) REFERENCES sss_role(role_id),
  manger_name   varchar(20),
  manger_psd    varchar(20),
  manger_gen    char(10),
  tel           varchar(20),
  address       varchar(50),
  comment       varchar(100)
);

create table sss_role(
  role_id       varchar(20) primary key ,
  role_name     varchar(20),
  comment       varchar(100)
);

create table sss_cityArea(
  area_id   varchar(20) primary key ,
  city_id   varchar(20),
  FOREIGN KEY(city_id) REFERENCES sss_city(city_id),
  range_id  varchar(20),
  area_name varchar(20),
  city_name varchar(20)
);

create table sss_deliveryReceipt(
  delivery_receipt_id     varchar(20) primary key ,
  start_city             varchar(20),
  end_city               varchar(20),
  mid_city               varchar(20),
  make_date              datetime,
  state                  varchar(20),
  comment                varchar(100)
);

create table sss_deliveryPlace(
  de_p_id          varchar(20) primary key ,
  mg_id           varchar(20),
  FOREIGN KEY(mg_id) REFERENCES sss_manger(mg_id),
  de_p_name        varchar(20),
  provimce_name   varchar(20),
  city_name       varchar(20),
  mg_name         varchar(20),
  de_p_tel         varchar(20),
  de_p_addr        varchar(100),
  comment         varchar(100)
);

create  table sss_deliveryRange(
  range_id        varchar(20) primary key ,
  de_p_id          varchar(20),
  FOREIGN KEY(de_p_id) REFERENCES sss_deliveryPlace(de_p_id),
  area_id         varchar(20),
  FOREIGN KEY(area_id) REFERENCES sss_cityArea(area_id),
  range_name      varchar(20),
  delivery_price  decimal(20),
  comment         varchar(100)
);

create table sss_association_1(
  ord_order_id             varchar(20) primary key ,
  del_delivery_receipt_id   varchar(20),
  order_id                varchar(20),
  delivery_receipt_id      varchar(20)
);
alter table sss_cityArea add foreign key(range_id) references sss_deliveryRange(range_id)



