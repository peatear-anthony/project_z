# How to use the Magenta Docker Image

### Prerequisites
* Nvidia Driver (already installed in the demo PC)
* Nvidia Docker (already installed in the demo PC)

## Instructions
1. Open your terminal and create a working directory. Any name is okay. for example "temp"
**You must remember what name you used**

```
# Open's your terminal
ctrl + alt + t
```
```
# Change to root directory and create a directory
cd ~/
mkdir -p temp/midi-data/training-set
```
2. Move all your MIDI files into the **training-set** folder

![Alt text](images/pic1.png?raw=true "Optional Title")

3. Run the Docker Image with the following command in terminal:
```
docker run -it --runtime=nvidia -p 8888:8888 -v /home/demo/temp:/root/magenta-data peatear/project-z:latest bash
```
4. Run the script within docker
```
./run.sh
```
![Alt text](images/pic2.png?raw=true "Optional Title")

5. You should see a link at the bottom of the terminal.
```
The Jupyter Notebook is running at:
http://(63117dd20e15 or 127.0.0.1):8888/?token=08756bff3060bd2da45ce7cfe24601c2e65505cb4b5b329a
```

Change the link as follows:
```
http://127.0.0.1:8888/?token=08756bff3060bd2da45ce7cfe24601c2e65505cb4b5b329a
```
6. Enter that link into your broswer (Chrome or Firefox) to open Jupyter Notebook

7. Once you see the Jupyter Notebook interface, click **jupyter_notebooks**. You should see the Melody and Polyphony notebooks after.
**You can click toggle show/hide** to hide the code

![Alt text](images/pic3.png?raw=true "Optional Title")

8. Run the Jupyter Notebook of your choice (Step by Step)
![Alt text](images/pic4.png?raw=true "Optional Title")

9. Once you finish generating the MIDI files you will find it in the following folder:
```
/temp/midi-data/generated_data/melody_rnn/run1
```
![Alt text](images/pic5.png?raw=true "Optional Title")
