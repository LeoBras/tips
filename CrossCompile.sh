#copie para o diret�rio do projeto e rode esse script antes de fazer as configura��es
#./CrossCompile.sh


make clean
export ARCH=arm				#Configura o GCC para usar a arquitetura ARM.
echo "Arquitetura = $ARCH"
export CROSS_COMPILE=arm-linux-gnueabi-	#Configura o prefixo para usar o cross-compiler.
echo "Cross-Compiler = $CROSS_COMPILE"


###Configur��es para compilar - ajuste suas necessidades ###
#make sam9_l9260_defconfig		#configura��o padr�o da SAM9-L9260, n�o � completo.
make xconfig				# Editor gr�fico de configura��es. 
#make menuconfig			# Editor de Configura��o em Modo Texto.
make uImage -j4				# Comando que compila, e usa 4 threads de gcc (usa v�rios nucleos do CPU).
#mv arch/arm/boot/uImage ~/Desktop/	# Move o uImage (kernel) para o Desktop do usu�rio.
