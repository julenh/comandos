Genera un par de claves gpg con el comando gpg --full-generate-key. Elige el tipo de clave, el tamaño y 
el periodo de validez que quieras. También tendrás que introducir tu nombre, tu dirección de correo electrónico y 
una contraseña para proteger tu clave privada. Puedes usar el comando gpg --list-secret-keys --keyid-format=long para 
ver el identificador de tu clave.


Exporta tu clave pública a un archivo o a un servidor de claves para compartirla con otros usuarios. Puedes usar el 
comando gpg --armor --export ID_DE_TU_CLAVE > clave_publica.asc para exportarla a un archivo 
o gpg --keyserver SERVIDOR_DE_CLAVES --send-key ID_DE_TU_CLAVE para enviarla a un servidor12.


Para encriptar un archivo con tu clave pública, usa el comando gpg --encrypt --recipient ID_DE_TU_CLAVE archivo.txt. 
Esto creará un archivo encriptado llamado archivo.txt.gpg.


Para desencriptar un archivo con tu clave privada, usa el comando gpg --decrypt archivo.txt.gpg. Esto mostrará el contenido 
del archivo original en la salida estándar. Si quieres guardarlo en otro archivo, puedes usar el 
comando gpg --decrypt archivo.txt.gpg > archivo.txt.


Puedes importar la clave publica de otra persona con el comando gpg --import clave_publica.asc.


Para cifrar un archivo con la clave pública de otra persona, usa el comando gpg --encrypt --recipient ID_DE_LA_CLAVE archivo.txt. 
Esto creará un archivo cifrado llamado archivo.txt.gpg que solo podrá ser descifrado por la persona que tenga la clave privada
correspondiente.


Para cifrar un archivo con tu clave privada, usa el comando gpg --sign --armor archivo.txt. Esto creará un archivo firmado 
llamado archivo.txt.asc que contendrá el contenido del archivo original y tu firma digital.


Para importar la clave pública desde un archivo, usa el comando gpg --import archivo.asc o gpg --import archivo.gpg, según el caso. 
Para importar la clave pública desde un texto, copia el texto y pégalo en la terminal después del comando gpg --import, y luego 
presiona Ctrl+D.


Para darle confianza a la clave pública importada, usa el comando gpg --edit-key ID_DE_LA_CLAVE, donde ID_DE_LA_CLAVE es el 
identificador de la clave que puedes ver con el comando gpg --list-keys. Esto te llevará a un menú interactivo donde puedes 
usar el comando trust para asignar un nivel de confianza a la clave. Los niveles posibles son: 1 (no confío), 2 (no sé), 
3 (confío marginalmente), 4 (confío totalmente) y 5 (es mi propia clave). Elige el nivel que corresponda y luego usa 
el comando save para guardar los cambios y salir.
