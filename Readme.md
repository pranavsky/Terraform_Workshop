Terraform Workshop

Requirements
    Google Cloud Platform Project
    GCP service account
    Terraform
    VS Code 


Watch this official video to get an idea on IaC and terraform https://www.hashicorp.com/resources/introduction-terraform-armon-dadgar-video
and complete this exercise

Terraform Installation

1. Go to https://www.terraform.io/downloads.html
2. Look for Windows 64 bit and Click for download
3. Unzip the downloaded file and add the path of the unzipped folder in your machine Env variables
4. Open command prompt and type terraform and press [ENTER], if you see available terraform commands then well done you've configured terraform. If you see any error message go back to point 3. 

Repo Download

5. Assuming you have VS CODE installed in your machine, look for HashiCorp Terraform extension and download it.
if you dont have VSCODE then get it from here - https://code.visualstudio.com/download
6. Download the source from this repo, unzip it.
Note: You will need to edit the values of the following argument names in provider.tf (credentials, project) which you can do after point 11.

7. On the command prompt, change the directory to the source code which we did in point 6.

Google Cloud
8. Go to your GCP project, create a service account by going into IAM & Admin, then Service account
9. Click on Create Service account button, give the name as you like and Grant this service account access to the project as Project Editor role (Not recommended in real time) and click done. This is one time activity so that terraform knows which project it is interacting with.
10. Now on Service account list page, find your just created service account and look for 3 dots (Yes same like on Campaign list screen) and click on Create Key, select JSON and click create. - This will download a secret key .json file in your machine.

Finally your very own laptop
11. Copy that .json file and place it the terraform workshop folder from point 6 and make sure you have updated credentials file path and your project name in provider.tf file
12. Open commandline and type terraform init
You should now see Terraform has been successfully initialized!
13. Now type terraform plan
This will show you the Linux debian instance that we want to deploy. This is listed in main.tf. Look out the resources that we have setup and ready for deployment in main.tf 
14. Type terraform apply to do the deployment.
15. Go back to Google Console and check under Compute Engine, the terraform instance will be created
16. Copy the external IP address and ping it from your command prompt, you'd see success response.
17. To destroy the just created instance type terraform destroy
18. Go back to GCP Compute Engine, Refresh the page and you'll see nothing.
19. Exercise
a. Try to create a firewall rule by writing the code on main.tf from the example here and make sure firewall rule you created is added under GCP < VPC < Firewall Rule
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
b. Create a bucket through terraform. Details can be found in page - https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources

Destroy everything by terraform destroy command


After you finished, well done and this is for you guys - https://ph-files.imgix.net/d224001c-e5b7-4e51-95f6-8d692887d14b


