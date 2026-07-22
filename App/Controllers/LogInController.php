<?php

class LoginController
{
    private UserModel $userModel;

    public function __construct(UserModel $userModel)
    {
        $this->userModel = $userModel;
    }

    public function login(string $email, string $password)
    {
        // Buscar el usuario por email.
        $user = $this->userModel->buscarPorEmail($email);

        if ($user) {
            echo "Usuario encontrado.";

            // Comprobar la contraseña.
            if ($password === $user['password']) {
                echo "Contraseña correcta. Iniciar sesión.";
            } else {
                echo "Contraseña incorrecta.";
            }
        } else {
            echo "Usuario no encontrado.";
        }
    }
}
