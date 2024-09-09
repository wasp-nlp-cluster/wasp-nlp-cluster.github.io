# WASP NLP Cluster GitHub Page Contribution Guide

Welcome to WASP NLP Cluster GitHub repository! This guide give step-by-step instructions for contribute to our GitHub Page. Whether you are fixing bugs, adding new content, or update existing information, your contribution are very important for our success.

## Important Note for Contributors

Before make changes, please fork the repository by click on 'Fork' button at the top right of this page. This will make a copy of the repository in your GitHub account in the address `your-github-id/wasp-nlp-cluster.github.io`.

When you submit pull requests, please ensure you are targeting correct base repository, which is `wasp-nlp-cluster/wasp-nlp-cluster.github.io`. **Do not** submit pull requests to the original template repository. When you open a pull request, select correct base repository on GitHub. For more details, please check our contribution guidelines.

## Local Development Using Docker

To make the setup process easy and avoid compatibility problems with Ruby and Jekyll versions, we recommend use Docker for local development. This way will make sure consistent environment across different operating systems.

### Prerequisites

Make sure you have Docker installed on your system before start. If not, you can install Docker and Docker Compose from these links:

- [Get Docker](https://docs.docker.com/get-docker/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)

### Running the Website Locally

Once Docker and Docker Compose are installed, follow these steps to run website locally:

1. Open terminal and go to the root directory of your forked version of `wasp-nlp-cluster/wasp-nlp-cluster.github.io` repository. It should look like `your-github-id/wasp-nlp-cluster.github.io`.

2. Pull the latest pre-built Jekyll image from DockerHub by using:

```bash
docker compose pull
```

3. Start Docker container with:

```bash
docker compose up
```

This command will start a local web server with the website running on it.

4. Open your web browser and go to `http://localhost:8080` to see the local version of the website.

## Getting Started with Contributions

### 1. Fork the Repository

### 2. Create a New Branch

Create new branch for your changes and name it based on the edits you plan, like `add-new-event` or `update-members-page`.

```bash
git checkout -b your-branch-name
```

### 3. Make Your Changes

Make your edits, additions, or updates in your branch. You can update existing content, add new files, or make other needed modifications.

### 4. Commit and Push Your Changes

After changes are done, commit them with clear and short message, then push them to your forked repository.

```bash
git add .
git commit -m "A brief description of your changes"
git push origin your-branch-name
```

### 5. Create a Pull Request

Go to your forked repository on GitHub, change to your branch, and click the 'Pull Request' button. Make sure the base repository is `wasp-nlp-cluster/wasp-nlp-cluster.github.io` and the base branch is `master`. Write details about your changes in the pull request message and submit it.

## Reviewing Pull Requests

Once you submit pull request, it will be reviewed by the maintainers. If everything is good, your changes will be merged. If more changes are needed, maintainers will give feedback on your pull request.

## Additional Guidelines

- **Follow Project Standards**: Make sure your contributions align with the project standards and code of conduct.
- **Test Locally**: Always test your changes locally to check that they work correctly before pushing them to the repository.
- **Branch Workflow**: Do not push directly to `master` branch. Always create new branch for your changes and submit pull request for review.
- **Adding Media**:
  - **Members and Events**: If your contribution includes media for members or events (e.g., speaker images, profile pictures), please upload these files to right subfolders in `assets` directory, like `assets/members` or `assets/events`.
  - **News and Posts**: For media connected to news or blog posts, upload images to `assets/img`, audio files to `assets/audio`, and other types of media to best folder within `assets`.

- **Commit Messages**: Use clear and descriptive commit messages to explain what your changes are about. This help reviewers understand your contribution without look deeply in the code.

- **Documentation**: If your changes affect functionality of site or add new features, please update any related documentation.

- **Code Quality**: Keep code clean, readable, and well-documented. Consistent formatting and following best practices make code easier for all contributors.

- **Review Feedback**: Be open to feedback during the pull request review process. Maintainers may suggest changes; please address them quickly for smooth merge process.

## Adding New Content

### Adding a Member Profile

To add member profile to WASP NLP Cluster team page:

1. Go to `_members` directory.
2. Create new Markdown file (`.md`) with suitable name, like `john_doe.md`.
3. Use this template for your profile:

```yaml
---
fullname: Your Name
image: path_to_your_image
position: Your Position
state: current # Options: current, alumni
start-date: YYYY-MM-DD
end-date: YYYY-MM-DD # If applicable
pronouns: your pronouns
email: your_email@domain.com
# Add any applicable social links:
scholar_userid:
github_username:
linkedin_username:
twitter_username:
website:
description: "A short personal bio or description."
---
content comes here ...
```

### Adding an Event

To add an event:

1. Go to `_events` directory.
2. Create new Markdown file (`.md`) with suitable name, like `nlp_meetup.md`.
3. Use this template for your event:

```yaml
---
layout: event
title: "Event Title"
host: "Host Name"
short_description: "Brief description of the event."
start: YYYY-MM-DDTHH:MM:SS+HH:MM # Start time and timezone offset
end: YYYY-MM-DDTHH:MM:SS+HH:MM # End time and timezone offset
location_type: "On-site" # Options: On-site, Remote
location: "Event Location"
categories: Category
image: assets/events/event_image.png
---
content comes here ...
```

### Adding an Announcement

To add an announcement:

1. Go to `_news` directory.
2. Create new Markdown file (`.md`) with suitable name, like `cluster_announcement.md`.
3. Use this template for announcement:

```yaml
---
layout: post
title: "Announcement Title"
date: YYYY-MM-DDTHH:MM:SS+HH:MM
inline: false # Set to true if this is a brief inline announcement
---
content comes here ...
```