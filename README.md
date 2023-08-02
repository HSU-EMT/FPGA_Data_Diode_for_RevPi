<div id="top"></div>



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/Logo_Emt.png">
    <img src="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/Logo_Emt.png" alt="Logo" width="180" height="80">
  </a>

  <h3 align="center">FPGA-based Unidirectional Propose to Separate
OT-IT or Zones within OT Networks in Secure
Industrial Automation Systems</h3>

  <p align="center">
    A puplication at ...
    <br />
    <a href="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/tree/main/others/paper"><strong>Explore the paper »</strong></a>
    <br />
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#required-hardware">Required Hardware</a></li>
        <li><a href="#required-software">Required Software</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li>
      <a href="#instructions">Instructions</a>
      <ul>
        <li><a href="#hardware">Hardware</a></li>
        <li><a href="#software">Software</a></li>
      </ul>
    </li>
    <li><a href="#test">Test</a></li>
    <li><a href="#notes">Notes</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

A new FPGA based approach for a data diode
transmitting data unidirectionally from a high security zone
to a lower security zone has been evaluated and implemented.
With the FPGA implementation, the need of additional hardware
could be minimized compared to most state-of-the-art data
diode realizations. The proposed data diode is designed to use
the available backplane bus communication protocol between
the programmable logic controller (PLC) and its connected
peripherals. To demonstrate the universal approach an opensource
platform based on the Revolution Pi (RevPi) and its
backplane bus has been used. Principally the data diode behaves
as a mirror presenting the complete protected system behind the
high security zone including the RevPi PLC controller and its
devices to the IT network. Another controller within the lower
security zone is used to imitate the OT process. Our approach
is not limited to the above controller and can be applied to any
type of programmable logic controller. The only requirement is
that the communication protocol on the backplane bus is known
and can be modified if needed, which is usually the case for the
PLC manufacturer or if an Open PLC is employed.

<p align="right">(<a href="#top">back to top</a>)</p>







<!-- GETTING STARTED -->
## Getting Started

#### Required Hardware

* [Zynq-7000 ARM/FPGA SoC Development Board](https://digilent.com/shop/zybo-z7-zynq-7000-arm-fpga-soc-development-board/): We use one Zybo Z7-20 board to build the data diode. Other board series may be suitable but not guaranteed.
* [Revolution Pi Modules](https://revolutionpi.de/revolution-pi-serie/): Two [RevPi Connect](https://revolutionpi.de/revpi-connect/) and one [DIO module](https://revolutionpi.de/io-modul/) are used in this project.
* [RS-485 Pmod](https://digilent.com/reference/pmod/pmodrs485/start): Two RS-485 Pmod modules are required to build the RS-485 communication channel for the data diode.
* [NIC100 Pmod](https://digilent.com/reference/pmod/pmodnic100/start): Three NIC100 Pmod modules are required to build the Ethernet communication channel for the data diode.
* Other basic equipment like two LAN cables, three [PiBridge connector](https://revolutionpi.de/shop/en/plug-pibridge), some wires, soldering device, power supply, Oscilloscope (optional).


#### Required Software

* [Vivado Design Suite](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html): We use Vivado HLx Editions 2019.1. Other versions may be suitable but not guaranteed.
* [Xilinx Software Development Kit (SDK)](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0015-sdk-hub.html): We use SDK 2019.1 integrated with Vivado 2019.1. Recommend to take a look [here](https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk) to install all required softwares.


<p align="right">(<a href="#top">back to top</a>)</p>


<!-- USAGE -->
## Usage

For more details, please refer to the [Documentation](https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/tree/main/others/paper)

<p align="right">(<a href="#top">back to top</a>)</p>


## Instructions

<!-- Hardware -->
#### Hardware

1. First, the RevPi modules are connected together via [PiBridge](https://revolutionpi.com/pibridge/). The figure below is the PiBridge connector and its pin assignment. A total of 3 PiBridge connectors are required. In which 2 connectors are uncapped so that they can be soldered to wires.
<div align="center">
  <a href="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/pin.jpg">
    <img src="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/pin.jpg" alt="pin" width="250" height="350">
  </a>
</div>

2. The diagram below shows how hardware devices are connected to each other. The author recommends readers to go through manual reference of the Zybo Z7-20 board [here](https://digilent.com/reference/programmable-logic/zybo-z7/reference-manual?redirect=1).

<div align="center">
  <a href="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/diagram.png">
    <img src="https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi/blob/main/others/images/diagram.png" alt="schema" width="950" height="380">
  </a>
</div>


3. [Power supply](https://revolutionpi.com/tutorials/uebersicht-revpi-connect/spannungsversorgung-anschliessen-connect/) for circuit boards and RevPi devices. Connect 2 controller modules via LAN cable to your laptop to be able to configure RevPi modules in PiCtory. See [here](https://revolutionpi.com/tutorials/uebersicht-revpi-connect/) and [here](https://revolutionpi.com/tutorials/was-ist-pictory-2/) for more details.


<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Software -->
#### Software

1. `fpga` folder contains vhdl codes for the fpga. All IP cores and pin assignments have been designed. User still need to ``Generate Bitstream`` and export ``hdf`` file in order to run ``application``.
2. Folder ``applications`` contains application for Microblaze soft processors. Use SDK application to open and debug ``applications``.
3. ``modified-piControl`` is the modified driver for pibridge. Use the ``Makefile`` to create ``.ko`` file for the driver. User also need to replace the exist ``.ko`` file on the Revolution pi PLCM with the new ``.ko`` file.  A look into the readme file is recommended.


<p align="right">(<a href="#top">back to top</a>)</p>


Project Link: [Github](https://github.com/HSU-EMT/FPGA_Data_Diode_for_RevPi)

<p align="right">(<a href="#top">back to top</a>)</p>



