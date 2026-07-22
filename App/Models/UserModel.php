<?php
//Gestión del usuario

class UserModel
{
    private PDO $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    //Encontrar usuario por email
    public function buscarPorEmail(string $email)
    {
        $sql = "SELECT * FROM users WHERE email = :email";

        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':email', $email);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>

y