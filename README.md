Despliegue de Infraestructura Básica en AWS con Terraform
Este proyecto utiliza Terraform para desplegar una infraestructura básica en AWS, que incluye:

- Creación de una **VPC** (Virtual Private Cloud).
- Despliegue de una **instancia EC2** en una subred pública.
- Configuración de un **Security Group** con reglas básicas de acceso (SSH y HTTP).

El objetivo de este proyecto es proporcionar una base sólida para que puedas comenzar a trabajar con Terraform y AWS de manera profesional.
📋 Prerequisitos
Antes de comenzar, asegúrate de tener los siguientes requisitos:

- Una cuenta de AWS.
- Terraform instalado en tu máquina local.
- Configurado el acceso a AWS mediante AWS CLI o claves de acceso.
- Conocimientos básicos de Terraform y AWS.
📁 Estructura del Proyecto
El proyecto está organizado de la siguiente manera:

```
aws-terraform-ec2-basic/
├── .gitignore
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── security-group/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

- **modules/:** Contiene los módulos de Terraform (VPC, EC2, Security Group).
- **main.tf:** Archivo principal donde se configura el proveedor de AWS.
- **variables.tf:** Archivo donde se definen las variables.
- **outputs.tf:** Archivo para definir los valores de salida.
- **terraform.tfvars:** Archivo para valores específicos de las variables.
- **README.md:** Este archivo con la documentación del proyecto.
👨‍💻 Instrucciones de Uso
1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/CloudInTheBrain/terraform-aws-basic-infrastructure
   cd aws-terraform-ec2-basic
   ```

2. **Configura las variables de Terraform:**

   Abre el archivo `terraform.tfvars` y configura los valores de las variables según tu entorno de AWS.

   Ejemplo:

   ```hcl
   region             = "us-west-2"
   cidr_block         = "10.0.0.0/16"
   public_subnet_cidr = "10.0.1.0/24"
   availability_zone  = "us-west-2a"
   ami                = "ami-12345678"
   instance_type      = "t2.micro"
   ```

3. **Inicializa el proyecto de Terraform:**

   ```bash
   terraform init
   ```

4. **Verifica los cambios que Terraform aplicará:**

   ```bash
   terraform plan
   ```

5. **Aplica los cambios y despliega la infraestructura:**

   ```bash
   terraform apply
   ```

   Terraform te pedirá confirmación. Escribe `yes` para continuar.
🔧 Módulos Utilizados

🌐 Módulo de VPC
Este módulo crea una VPC con una subred pública. Se configura con un bloque CIDR y habilita la resolución de DNS.

💻 Módulo EC2
Este módulo lanza una instancia EC2 dentro de la subred pública creada por el módulo de VPC. También configura el Security Group necesario para la instancia.

🔒 Módulo de Security Group
Este módulo crea un Security Group con reglas que permiten el acceso SSH (puerto 22) y HTTP (puerto 80) desde cualquier dirección IP.

🚀 Despliegue y Recursos
Una vez que el despliegue se complete, puedes acceder a tu instancia EC2 a través de SSH usando la clave privada asociada a la instancia.

📝 Licencia
Este proyecto está bajo la Licencia MIT - ver el archivo LICENSE para más detalles.
