#!/bin/bash

nano main.yml

mkdir -p templates
cat <<EOF > templates/datos_alumno.j2
Nombre: Gonzalo Apellido: Tavernese
Division: 116
EOF

cat <<EOF > templates/datos_equipo.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_vcpus }}
EOF

