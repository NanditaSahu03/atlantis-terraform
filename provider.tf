terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {

  project = var.gcp_project
  region  = var.region
  zone    = var.zone
  access_token = "ya29.c.b0AXv0zTM4v915M05rlnhO28jAN6UXWX_4sfwS6IN6uBZjm-j5rsmsqN0A2Gg4j9GSZ0cJ23sYbUHLrC5LkYZD-FpXgpKEgCLpa3vTi5WoxkazfEhHkCn4SPRjwrrIhT9qJJ8eDtfEHcm2JzMLWOovP-Zs0z4VivtWOp3ydNbbXA7JtWNTiQDk5jdhM1QP3vrCs2qeGEUlosBhKWGK1cI9OzIROdMqtWVAr1CXLBJxiTFHXXn4rnTwvJoMe5BNNNW38oVnKq4GbWeYWXqNp5ywQhL9ojuImhXpkjPWnlb0-_4Ocyehu6c2ZoKLO3oZ4fYTgoAUBAcFD1c2pYNl24IUfaO1Hd_g3T4yvEV2oeLzMx6ZTCuW8pm2a5wkq1ub__CjPNdjRk7lAImLc5tZuOdfpHCDLSARcTOha4H-5LHR1x_4DWaiFRuk-r3HDNdY6SUcetYbRZcRLdQaTBVxdJACvfshri8o0g" 
}


