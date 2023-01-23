# JADE-WP-XML
This repository contains **XMLWhitePaper**, an example JADE schema that accompanies the **XML in JADE** white paper. This schema is the for the 2020 version of JADE, which is *not* the latest version.

## Documentation
The accompanying white paper that also contains instructions for usage of the **XMLWhitePaper** schema can be found at https://www.jadeworld.com/jade-platform/developer-centre/documentation/white-papers. Then scroll down to the **Archived** section to access white papers and examples from non-current versions of JADE.

## Getting Started
These instructions describe how to load the schema for usage on your machine.

### Prerequisites

Before you can load the schemas, you need JADE 2020 installed.

You may also be able to find versions of the schema for usage with older versions of JADE at https://www.jadeworld.com/jade-platform/developer-centre/documentation/white-papers under the **Archived** section at the bottom, although this is not guaranteed.

1. Grab a FREE Developer's license at https://secure.jadeworld.com/devlicense/.
2. Download the JADE 2020 release at https://www.jadeworld.com/developer-center/download-jade .
3. Open the installer and follow the instructions in the install wizard.
4. JADE is now installed, and a shortcut has been placed in your Start menu. You're good to go!

> For details about installing JADE, see https://secure.jadeworld.com/JADETech/JADE2020/Docs/InstallConfig.pdf.

### Loading the Schemas using JADE Git Integration

**Step 1: Setting your username and email**
1. In the Options menu, select the **Preferences** command.
2. Select the **Source Management** sheet.
3. Enter your name and email address in the **Commit Details** group box inside the **Source Control** group box.
4. Select a valid working directory. (This can be whatever you like, as long as you remember it.)
5. Click the **OK** button.

**Step 2: Cloning the Repository**
1. In the **Browse** menu, select the **Clone** command from the **Git Source Control** Client submenu.
(The local path is filled in for you as the path you selected in Step 1.)
2. For the Repository URL, enter https://github.com/jadesoftwarenz/JADE-WP-XML.
3. Click the **Clone** button.
4. In the **Browse** menu, select the **Checkout** command from the **Git Source Control Client** submenu.
5. From the **Branch** dropdown box, select **v2020**
6. Untick the **Create New Branch** and **Track Remote Branch** boxes.
7. Click **Checkout**.

**Step 3: Load the Schema**
1. In the Schema menu, select the **Load** command.
2. For **Schema File Name** click **Browse** and find the **XMLWhitePaper.scm** file you cloned into the path you selected.
3. For **Forms File Name** click **Browse** and find the **XMLWhitePaper.ddx** file you cloned into the path you selected.
4. Click the **OK** button, and the **XMLWhitePaper** schema will be loaded into your Schema Browser ready for use.

## Frequently Asked Questions
**Q.** Can I contribute to or change these schemas?
> The schemas contained in this repository are for demonstration purposes, and as such, are not open to pull requests. However, you are welcome to create a fork and make changes to your own copy, subject to our license ([LICENSE.txt](LICENSE.txt)).

**Q.** What can I do with the **XMLWhitePaper** schema?
> Refer to the **XML in JADE** white paper 2020 version found at https://www.jadeworld.com/jade-platform/developer-centre/documentation/white-papers in the **Archived** section for detailed instructions on using the schema as well as exaplanations of the concepts it demonstrates.


## License

This project is licensed under the MIT License. See the [LICENSE.txt](LICENSE.txt) file for details.
