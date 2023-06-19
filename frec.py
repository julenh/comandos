# Importamos el módulo Counter para contar las frecuencias de las letras
from collections import Counter

# Definimos el alfabeto español y su frecuencia relativa según la RAE
alfabeto = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
frecuencia = [0.11525, 0.02215, 0.04019, 0.05010, 0.12181, 0.00692, 0.01768, 0.00703, 0.06247, 0.00493, 0.00011, 0.04967, 0.03157, 0.06712, 0.00008, 0.08683, 0.01008, 0.06871, 0.07977, 0.04632, 0.02927, 0.01138, 0.00017, 0.00215, 0.01008, 0.00467]

# Leemos el texto cifrado del archivo y lo convertimos a mayúsculas
with open("cifrado.txt", "r") as f:
    texto_cifrado = f.read().upper()

# Contamos la frecuencia de las letras en el texto cifrado
contador = Counter(texto_cifrado)

# Ordenamos las letras del texto cifrado según su frecuencia
letras_cifradas = sorted(contador.keys(), key=lambda x: contador[x], reverse=True)

# Creamos un diccionario que asocia cada letra cifrada con la letra más probable según la frecuencia relativa
diccionario = {}
for i in range(len(letras_cifradas)):
    diccionario[letras_cifradas[i]] = alfabeto[frecuencia.index(sorted(frecuencia, reverse=True)[i])]

# Creamos una lista vacía para guardar el texto descifrado
texto_descifrado = []

# Recorremos el texto cifrado y sustituimos cada letra por la correspondiente del diccionario
for letra in texto_cifrado:
    if letra in diccionario:
        texto_descifrado.append(diccionario[letra])
    else:
        texto_descifrado.append(letra)

# Unimos la lista en una cadena y la mostramos por pantalla
texto_descifrado = "".join(texto_descifrado)
print(texto_descifrado)
