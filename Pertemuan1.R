# R Training
# Taking a first look at the interface

8 + 3 # Basic Math
1:250 # Print angka dari 1 sampai 250

print("Hello World") # Print output "Hello World" pada console

# Variable
x <- 1:5 # Menyimpan angka 1 sampai 5 ke dalam variabel x
x        # Memanggil variable x

y <- c(6, 7, 8, 9, 10) # Memasukan angka ke dalam variabel y dengan coloum
y                      # Memanggil variable y

a <- 1 # Gunakan "<-", bukan "="

1 -> a # Bisa tapi aneh

x <- 1:5
y <- 6:10

x + y
x * 2

# Clean Up
rm(x) # Remove an object from workspace
rm(a, b) # Remove more than one
rm(list = ls()) # Clear entire workspace

# Cara melihat packages
library()
search()

# Install packages
install.packages("ggplot2")

# Vignettes
vignette(package = "grid") # Memunculkan list dari vignettes

# Browse Vignettes
browseVignettes()

# Membuat dataset
?datasets
library(help = "datasets")

# Melihat dalam dalam R
data()

# Load Dataset
data("presidents")
presidents
