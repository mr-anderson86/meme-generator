# React Meme Generator

> A Web App to generate and download custom Memes built with React

## Dependencies
### For direct run on you computer
- [React](https://reactjs.org/)

### For running via Docker
- [Docker](https://www.docker.com/)

## Setup

### Locally on the computer/host

Clone the repo from GitHub and then install the dependencies:

```bash
git clone https://github.com/Thoud/meme-generator.git
cd react-meme-generator
yarn or npm install
```

### Via Docker

```bash
git clone https://github.com/Thoud/meme-generator.git
cd react-meme-generator
docker build -t <your repo>/<your image>:<your tag> .

# Example:
# docker build -t my-repo/meme-generator:v1.0.0 .
```

## Usage

### Locally on computer/host
With `yarn start` you can start the development server and access at the app at http://localhost:3000.

### Via Docker
```bash
docker run -d --name <container name> -p <some port>:3000 <image name>

# Example for port 80
# docker run -d --name my-meme-generator -p 80:3000 my-repo/meme-generator:v1.0.0

# Example for port 3000
# docker run -d --name my-meme-generator -p 3000:3000 my-repo/meme-generator:v1.0.0
```
Then you can access at the app at `http://localhost:<some port>`


Input your top and bottom text, choose the Meme you would like to have and then click on `Create Meme`.  
After that you can see a preview of your Meme. If you like it, then you can click on `Download`.  
The App will download the Meme in it's original size and best quality.

## Deployment

Create a [Netlify](https://www.netlify.com/) Account and then follow the instructions there to deploy from GitHub.

## Preview

![Preview of the app](/images/page.png 'Preview of the app')

## Troubleshoot
If you get an `ERR_PACKAGE_PATH_NOT_EXPORTED` error,  
then inside the [package.json](package.json) simply add to the `react-scripts` commands this flag `--openssl-legacy-provider` as follows:
```json
  "scripts": {
    "start": "react-scripts --openssl-legacy-provider start",
    "build": "react-scripts --openssl-legacy-provider build",
    "test": "react-scripts --openssl-legacy-provider test",
    "eject": "react-scripts --openssl-legacy-provider eject"
  }
```