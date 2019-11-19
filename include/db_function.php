<?php 
class db_function{
    private $conn;

    function __construct(){
        require_once 'db_connect.php';
        $db = new db_connect();
        $this->conn = $db->connect();
    }
    function __destruct(){}

    public function simpanUser($nama, $email, $password, $username){
        $hash = $this->hashSSHA($password);
        $en_password = $hash["encrypted"];
        $salt = $hash["salt"];

        $stmt = $this->conn->prepare("INSERT INTO tbl_user (nama, email, en_password ,username, salt) values(?,?,?,?,?)");
        $stmt->bind_param("sssss", $nama, $email, $en_password, $username, $salt);
        $result = $stmt->execute();
        $stmt->close();

        if($result){
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        }else{
            return false;
        }
    }
    public function updateUser($nama, $email, $username){
        $stmt = $this->conn->prepare("UPDATE tbl_user SET nama = '$nama', username = '$username', email = '$email' WHERE email = '$email'");
        $result = $stmt->execute();
        $stmt->close();

        if($result){
            $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        }else{
            return false;
        }
    }
    public function verifyAccount($username, $email){
        $stmt = $this->conn->prepare("SELECT * from tbl_user where username =? and email=? ");
        $stmt->bind_param("ss", $username, $password);
        if($stmt->execute()){
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();

            return $user;
        }else{
            return NULL;
        }
        
    }

    public function getUserbyEmailAndPassword($email, $password){
        $stmt = $this->conn->prepare("SELECT * FROM tbl_user WHERE email = ?");
        $stmt->bind_param("s", $email);
        if($stmt->execute()){
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();

            $salt = $user['salt'];
            $en_password = $user['en_password'];
            $hash = $this->checkhashSSHA($salt, $password);
            if($en_password == $hash){
                return $user;
                }
            }else{
                return NULL;
        }
    }


    public function isUserExist($email){
        $stmt = $this->conn->prepare("SELECT email FROM tbl_user WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if($stmt->num_rows >0){
            $stmt->close();
            return true;
        }else{
            $stmt->close();
            return false;
        }
    }
    

    public function hashSSHA($password){
        $salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
        $hash = array("salt" => $salt, "encrypted" => $encrypted);
        return $hash;
    }

    public function checkhashSSHA($salt, $password) {
        $hash = base64_encode(sha1($password . $salt, true) . $salt);
        return $hash;
    }
}
?>