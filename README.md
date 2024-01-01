<div align="center">
	<a href="https://github.com/Green-Supermart/GREEN">
		<img src="https://github.com/Green-Supermart/GREEN/assets/79461263/355c2551-007f-4ec0-86f3-2f0e42e4b06b" height="80px">
	</a>
	<h3>Instructions Manual to Launch the Website</h3>
</div>

<br>

## Prerequisites

1. Git: https://git-scm.com
2. Apache Tomcat 10.1: https://github.com/Green-Supermart/docs/blob/main/apache-tomcat-10.1.13.exe
3. IntelliJ: https://www.jetbrains.com/idea/download
4. xampp: https://www.apachefriends.org/download.html

<br>

## Instructions

**Step 1:** Install the relevant applications from the given links.

<hr>


**Step 2:** Open Git bash and clone the GREEN Supermart repository:<br>
```
git clone https://github.com/Green-Supermart/GREEN.git
```

<hr>


**Step 3:** Open cloned repository folder with IntelliJ.

<hr>


**Step 4:** Setup IntelliJ to run the website:

1. Click the dropdown called **Current File**.

![Screenshot 1](https://github.com/Green-Supermart/GREEN/assets/79461263/b699e39a-e52c-4743-9f07-bc168cd7a365)

2. Select **Edit Configurations...**

![Screenshot 2](https://github.com/Green-Supermart/GREEN/assets/79461263/baab8a57-f97d-4733-8c1e-98c03c97ae76)

3. Click the plus icon, and then select the **Local** from the **Tomcat Server** in the Run/Debug Configurations Window.

![Screenshot 3](https://github.com/Green-Supermart/GREEN/assets/79461263/8187c015-3508-4880-b9a7-a3f27064026a)

4. In the Application server, click **Configure..** button.

5. Click the plus icon, then choose the path where **Tomcat 10.1** is installed in the _Tomcat Home_ and click **OK** after selecting.

6. Click the **Fix** button in the **No artifacts marked for deployment** error.

![Screenshot 4](https://github.com/Green-Supermart/GREEN/assets/79461263/9dbe191b-1bdd-4a58-a9b4-355e41903c16)

7. Select _java_backend:war exploded_ from the Select Artifacts to Deploy dialog.

![Screenshot 5](https://github.com/Green-Supermart/GREEN/assets/79461263/d7789f31-dca9-4e31-af75-39644765679a)

8. Clear the Application context field.

![Screenshot 6](https://github.com/Green-Supermart/GREEN/assets/79461263/8dc9004a-8f7a-4126-846b-ef9e86eb7721)

9. Go to **Server** tab, select these configurations.

![Screenshot 7](https://github.com/Green-Supermart/GREEN/assets/79461263/3a06b557-c9dc-44ef-b361-addcb0ebf490)

10. Click **Apply** and then **OK**.

<hr>


**Step 5:** Start Apache and MySQL services from xampp.

![Screenshot 8](https://github.com/Green-Supermart/GREEN/assets/79461263/828586a3-99cb-4110-8205-34a70cff3477)

<hr>


**Step 6:** Setup database with phpMyAdmin method to import content to the database and load to the website:

1. Go to **phpMyAdmin**: http://localhost/phpmyadmin

2. Select the **Import** tab, input the sql file and then click **Import**.

![Screenshot 9](https://github.com/Green-Supermart/GREEN/assets/79461263/57a331e1-35ed-4995-b977-0306fa10403c)

3. After importing, there should be **3 Tables** in the database as **products**, **orders**, and **user**.

<hr>


**Step 7:** Run the project in **IntelliJ**.

<hr>


**Step 7:** Now the website should launch in the web browser.
