<?PHP
    class Account {
        public $getconect=false;
        function __construct(){
            require_once "ConnectDatabase.php";
            $conectSQL = new connectDatabase();
            $this->getconect = $conectSQL->connect();
        }
        public function login($email, $pass){
            if(!$this->getconect){
                return 0;
            }else{
                $sql = "SELECT * FROM user WHERE email='$email' and password='$pass'";
                $data = mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($data) == 0) return 0;
                else{
                   return mysqli_fetch_assoc($data)['id'];
                }
            }
            return 0;
        }
        public function loginAdmin($email, $pass){
            if(!$this->getconect){
                return 0;
            }else {
                $sql = "SELECT * FROM user WHERE email='$email' and password='$pass'";
                $data = mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($data) == 0) return 0;
                else{
                    $user = mysqli_fetch_assoc($data);
                    if($user['id'] == 0) {
                        return $user['id'];
                    }
                }
            }
            return 0;
         }
        
        public function getUser($id){
            if(!$this->getconect){
                return 0;
            }else{
                $sql = "SELECT * FROM user WHERE id='$id'";
                $data = mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($data) == 0) return 0;
                else{
                    return mysqli_fetch_assoc($data);
                }
            }
            return 0;
         }
        public function getIdByEmail($email){
            if(!$this->getconect){
                return 0;
            }else{
                $sql = "SELECT * FROM user WHERE email='$email'";
                $data = mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($data) == 0) return 0;
                else{
                    return mysqli_fetch_assoc($data)['id'];
                }
            }
            return 0;
        }

        public function Registration($email, $password, $name, $phonenumber, $address)
        {
            if(!$this->getconect){
                return false;
            }else{
                $sql="select * from user where email='$email'";
                $kt=mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($kt)  > 0) {
                    echo '<script>alert("Tài khoản với email này đã tồn tại...")</script>';
                    return false;
                }else{
                    $sql ="INSERT INTO user values(NULL, '$email', '$password', '$name', '$phonenumber', '$address')";
                    mysqli_query($this->getconect, $sql);
                    return true;
             }
            }
            return false;
        }

        public function ChangePassword($id, $oldpass, $newpass)
        {
            if(!$this->getconect){
                return false;
            }else{
                $sql="select password  from user where id='$id'";
                $kt=mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($kt)  == 0){
                    return false;
                }else{
                    $getpass = mysqli_fetch_assoc($kt)['password'];
                    if(md5($oldpass) === $getpass){
                        $newpass = md5($newpass);
                        $sql="UPDATE user SET password = '$newpass' where id='$id'";
                        echo "<script> alert('Mật khẩu đã được thay đổi thành công...')</script>";
                        mysqli_query($this->getconect, $sql);
                        return true;
                    }
                    else {
                        echo "<script> alert('Bạn nhập mật khẩu cũ không đúng...')</script>";
                        return false;
                    }
             }
            }
            return false;
        }

        public function ChangePasswordUserByAdmin($id, $pass){
            if(!$this->getconect){
                return false;
            }else{
                $newpass = md5($pass);
                $sql="UPDATE user SET password = '$newpass' where id='$id'";
                echo "<script> alert('Mật khẩu người dùng đã được thay đổi...')</script>";
                mysqli_query($this->getconect, $sql);
                return true;
            }
            return false;
        }

        public function ChangeInformation($id, $name, $phonenb, $address)
        {
            if(!$this->getconect) {
                return false;
            } else {
                $sql="select email from user where id='$id'";
                $kt=mysqli_query($this->getconect, $sql);
                if(mysqli_num_rows($kt) == 0){
                    return false;
                }
                else {
                    $sql="UPDATE user SET name='$name', phonenumber='$phonenb', address='$address'  where id='$id'";
                    mysqli_query($this->getconect, $sql);
                    return true;
             }
            }
            return false;
        }


        public function getlistUser()
        {
            if (!$this->getconect) {
                return false;
            } else {
                $data = array(array());
                $sql = "SELECT * from user ";
                $getdata = mysqli_query($this->getconect, $sql);
                if (mysqli_num_rows($getdata) <= 0) return false;
                else {
                    $dem = 0;
                    while ($linedata = mysqli_fetch_assoc($getdata)) {
                        $data[$dem][0] = $linedata['id'];
                        $data[$dem][1] = $linedata['email'];
                        $data[$dem][2] = $linedata['password'];
                        $data[$dem][3] = $linedata['name'];
                        $data[$dem][4] = $linedata['phonenumber'];
                        $data[$dem][5] = $linedata['address'];
                        $dem++;
                    }
                }
                return $data;
            }
            return false;
        }
        public function deleteUserByID($id)
        {
            $sql = "delete from user where id = '$id'";
            //  $sql2 = "delete from comment_travelviewing where id = '$id'";
            try {
                mysqli_query($this->getconect, $sql);
                //    mysqli_query($this->conect, $sql2);
                return true;
            } catch (Exception $e) {
                return false;
            }
        }

        public function getUserByid($email)
        {
            if (!$this->getconect) {
                return false;
            } else {
                $data = array(array());
                $sql = "SELECT * from user where  email='$email'";
                $getdata = mysqli_query($this->conect, $sql);
                if (mysqli_num_rows($getdata) <= 0) return false;
                else {
                    $datart = mysqli_fetch_assoc(mysqli_query($this->conect, $sql));
                    return $datart;
                }
                return $data;
            }
            return false;
        }
    }
?>

