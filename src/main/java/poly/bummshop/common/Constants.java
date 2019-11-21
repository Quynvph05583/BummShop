package poly.bummshop.common;

public interface Constants {

	// Login
	final String URL_LOGIN = "/login";
	final String URL_LOGOUT = "/logout";
	final String URL_REGISTER = "/register";
	final String LOGIN_PAGE = "admin/login";
	final String REGISTER_PAGE = "admin/register";
	final String REDIRECT_LOGIN = "redirect:/login";
	final String REDIRECT_REGISTER = "redirect:/register";
	final String REDIRECT_HOME = "redirect:/home";
	final String REDIRECT_ADMIN_HOME = "redirect:/admin/admin";
	final String LOGIN_FAIL = "Tên đăng nhập hoặc mật khẩu không chính xác !";
	final String LOGIN_KH_SUCCESS = "Chào mừng qúy khách <b>";
	final String LOGIN_ADMIN_SUCCESS = "Chào mừng Admin <b>";
	final String LOGIN_KH_ADMIN_SUCCESS = "<b> đã đăng nhập !";
	final String SESSION_USER = "currentUser";
	final String MESSAGE = "message";
	final String ROLE_KH = "KH";
	final String ADDTRIBUTE_USER = "USER";

	// Register
	final String REGISTE_SUCCESS = "Chúc mừng bạn đã đăng ký thành công !";
	final String REGISTE_FAIL = "Đăng ký thất bại, tên đăng nhập <b>";
	final String REGISTE_FAIL2 = "</b> này đã tồn tại !";

	// Product client
	final String URL_HOME_PAGE = "/home/{pageNumber}";
	final String URL_HOME = "/home";
	final String URL_HOME_ = "/";
	final String URL_LIST_PRODUCT_CLIENT_PAGE = "/listProduct/{pageNumber}";
	final String URL_LIST_PRODUCT_CLIENT = "/listProduct";
	final String URL_PAYMENT = "/payment";
	final String PRODUCT_CLIENT_PAGE = "client/product";
	final String PRODUCT_CLIENT_HOME_PAGE = "client/home";
	final String REDIRECT_PRODUCT_CLIENT_HOME_PAGE = "redirect:/home";
	final String USERNAME = "username";
	final String ADDRESS = "address";
	final String TOTAL = "total";
	final String NAME = "name";
	final String PHONE = "phone";
	final String EMAIL = "email";
	final String PAGE_NUMBER = "pageNumber";
	final String SEARCH = "search";
	final String CATEGORY = "category";
	final String CATEGORY_SQL = " category = '";
	final String QUOTATION = "'";
	final String STRING_NULL = "";
	final String NAME_LIKE = " name like concat('%', convert('";
	final String USERNAME_LIKE = " username like concat('%', convert('";
	final String PRICE_LIKE = "', binary), '%') or price like concat('%', convert('";
	final String ADDRESS_USER_LIKE = "', binary), '%') or address like concat('%', convert('";
	final String BINARY = "', binary), '%')";
	final String NEXT = "next";
	final String BACK = "back";
	final String CURREN_PAGE = "currenPage";
	final String TOTAL_PAGE = "totalPage";
	final String ALL_PRODUCT = "allProduct";
	final String CATEGORY_ID = "categoryId";
	final String SESSION_LIST_CART = "listCart";
	final String SESSION_TOTAL_PRICE = "totalPrice";

	// Cart client
	final String URL_CART = "/cart";
	final String URL_ADD_TO_CART = "/add/{productId}";
	final String URL_DELETE_CART = "/delete/{productId}";
	final String CART_CLIENT_PAGE = "client/cart";
	final String REDIRECT_CART_CLIENT_PAGE = "redirect:/cart";
	final String PRODUCT_ID_CART = "productId";
	final String UNCHECK = "unchecked";

	// Product admin
	final String URL_LIST_USER_PAGE_PRODUCT_ADMIN = "/listUser/{pageNumber}";
	final String URL_LIST_USER_PRODUCT_ADMIN = "/listUser";
	final String URL_DELETE_PRODUCT_ADMIN = "/listProduct/delete/{id}/{currenPage}";
	final String URL_ADMIN = "/admin";
	final String URL_CREATE_PRODUCT_ADMIN = "/create";
	final String URL_EDIT_ID_PRODUCT_ADMIN = "/edit/{id}";
	final String ADMIN_PAGE = "admin/admin";
	final String PRODUCT_PAGE = "admin/listProduct";
	final String LIST_USER_PAGE = "admin/listUser";
	final String CREATE_PRODUCT_PAGE = "admin/createProduct";
	final String EDIT_PRODUCT_PAGE = "admin/editProduct";
	final String REDIRECT_PRODUCT = "redirect:/admin/listProduct";
	final String REDIRECT_USER = "redirect:/admin/listUser";
	final String ID_PRODUCT_ADMIN = "id";
	final String ADDTRIBUTE_EDIT_PRODUCT = "editProduct";
	final String PRICE = "price";
	final String IMAGE = "image";
	final String DETAIL = "detail";
	final String QUANTITY = "quantity";
	final String ALL_USER = "allUser";
	final String CONNECT_THE_URL = "/";

	// Common delete page
	final String DELETE_FAIL = "Bạn phải xóa khóa ngoại của bảng trước!";
	final String DELETE_SUCCESS = "Bạn đã xóa thành công!";

	// Order admin
	final String URL_LIST_ODER_PAGE = "/listOrder/{pageNumber}";
	final String URL_LIST_ODER = "/listOrder";
	final String URL_EDIT_ODER = "/editOrders/{id}";
	final String URL_DELETE_ODER = "/listOrder/delete/{id}/{currenPage}";
	final String LIST_ODER_PAGE = "admin/listOders";
	final String EDIT_ODER_PAGE = "admin/editOrders";
	final String REDIRECT_LISTODER_PAGE = "redirect:/admin/listOrder";
	final String STATUS_LISTODER_I = "Đang đặt hàng";
	final String STATUS_LISTODER_II = "Đang giao hàng";
	final String STATUS_LISTODER_III = "Đã giao hàng";
	final String STATUS_LISTODER_IV = "Yêu cầu hủy";
	final String ADDRESS_LIKE = " address like concat('%', convert('";
	final String STATUS_LIKE = "', binary), '%') or status like concat('%', convert('";
	final String ADD_OBJECT_ARRSTATUS = "arrStatus";
	final String ALL_ORDER = "allOrder";
	final String ADD_ADDTRIBUTE_EDITORDER = "editOrders";
	final String STATUS = "status";
	final String ORDER_TOTAL_PRICE = "orderTotalPrice";

	// Category admin
	final String URL_LIST_CATEGORY_PAGE = "/listCategory";
	final String URL_CREATE_CATEGORY_PAGE = "/createCategory";
	final String URL_DELETE_CATEGORY_PAGE = "/listCategory/delete/{id}";
	final String URL_EDIT_CATEGORY_PAGE = "/editCategory/{id}";
	final String CATEGORY_PAGE = "admin/listCategory";
	final String EDIT_CATEGORY_PAGE = "admin/editCategory";
	final String CREATE_CATEGORY_PAGE = "admin/createCategory";
	final String REDIRECT_CATEGORY_PAGE = "redirect:/admin/listCategory";
	final String ADD_OBJECT_ALL_CATEGORY = "allCategory";
	final String ADD_ADDTRIBUTE_EDIT_CATEGORY = "editCategory";

	// Entity User
	final String ENTITY_USER_TABLE = "user";
	final String ENTITY_USERNAME_COLUMN = "username";
	final String ENTITY_PASSWORD_COLUMN = "password";
	final String ENTITY_NAME_COLUMN = "name";
	final String ENTITY_GENDER_COLUMN = "gender";
	final String ENTITY_AGE_COLUMN = "age";
	final String ENTITY_PHONE_COLUMN = "phone";
	final String ENTITY_ADDRESS_COLUMN = "address";
	final String ENTITY_TYPE_USER_COLUMN = "type_user";
	final String ENTITY_EMAIL_COLUMN = "email";

	// Entity Product
	final String ENTITY_PRODUCT_TABLE = "product";
	final String ENTITY_PRODUCT_ID_COLUMN = "product_id";
	final String ENTITY_PRODUCT_NAME_COLUMN = "product_name";
	final String ENTITY_PRODUCT_PRICE_COLUMN = "product_price";
	final String ENTITY_PRODUCT_IMAGE_COLUMN = "product_image";
	final String ENTITY_PRODUCT_DETAIL_COLUMN = "product_detail";
	final String ENTITY_PRODUCT_QUANTITY_COLUMN = "product_quantity";
	final String ENTITY_CATEGORY_ID_COLUMN = "category_id";

	// Entity Order
	final String ENTITY_ORDER_TABLE = "orders";
	final String ENTITY_ORDER_MAPBY = "order";
	final String ENTITY_ORDER_ID_COLUMN = "order_id";
	final String ENTITY_ORDER_ADDRESS_COLUMN = "order_address";
	final String ENTITY_ORDER_STATUS_COLUMN = "order_status";
	final String ENTITY_ORDER_DATE_COLUMN = "order_date";
	final String ENTITY_ORDER_TOTAL_PRICE_COLUMN = "order_totalprice";
	final String ENTITY_ORDER_NAME_COLUMN = "name";
	final String ENTITY_ORDER_PHONE_COLUMN = "phone";
	final String ENTITY_ORDER_EMAIL_COLUMN = "email";

	// Entity OrderDetail
	final String ENTITY_ORDERDETAIL_TABLE = "order_detail";
	final String ENTITY_ORDERDETAIL_ID_COLUMN = "order_detail_id";

	// Entity Category
	final String ENTITY_CATEGORY_TABLE = "category";
	final String ENTITY_CATEGORY_NAME_COLUMN = "category_name";

}
