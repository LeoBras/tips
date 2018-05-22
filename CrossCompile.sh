#copie para o diretório do projeto e rode esse script antes de fazer as configurações
#./CrossCompile.sh


make clean
export ARCH=arm				#Configura o GCC para usar a arquitetura ARM.
echo "Arquitetura = $ARCH"
export CROSS_COMPILE=arm-linux-gnueabi-	#Configura o prefixo para usar o cross-compiler.
echo "Cross-Compiler = $CROSS_COMPILE"


###Configurções para compilar - ajuste suas necessidades ###
#make sam9_l9260_defconfig		#configuração padrão da SAM9-L9260, não é completo.
make xconfig				# Editor gráfico de configurações. 
#make menuconfig			# Editor de Configuração em Modo Texto.
make uImage -j4				# Comando que compila, e usa 4 threads de gcc (usa vários nucleos do CPU).
#mv arch/arm/boot/uImage ~/Desktop/	# Move o uImage (kernel) para o Desktop do usuário.
