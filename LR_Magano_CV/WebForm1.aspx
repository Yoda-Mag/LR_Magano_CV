<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LR_Magano_CV.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>My Virtual CV</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #0a0a23;
            background-image:
                radial-gradient(2px 2px at 20% 30%, #ffffff11, transparent),
                radial-gradient(1.5px 1.5px at 80% 60%, #44ccff11, transparent),
                radial-gradient(2px 2px at 60% 90%, #88e0ef11, transparent);
            background-size: 600px 600px;
            background-repeat: repeat;
            color: #e5e7eb;
            font-family: 'Orbitron', sans-serif;
        }

        .glow {
            text-shadow: 0 0 8px #00bcd4, 0 0 15px #2196f3;
            transition: text-shadow 0.3s ease-in-out;
        }

        .glow:hover {
            text-shadow: 0 0 12px #00bcd4, 0 0 20px #2196f3;
        }

        .glass {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .section-title {
            color: #60a5fa;
        }

        .space-bg {
            font-family: 'Orbitron', sans-serif;
            background: radial-gradient(ellipse at bottom, #0d0d2b 100%, #000010 0%);
            color: #d1d5db;
            background-image:
                radial-gradient(2px 2px at 20% 30%, #ffffff22, transparent),
                radial-gradient(1.5px 1.5px at 80% 60%, #00ffff22, transparent),
                radial-gradient(2px 2px at 60% 90%, #4fc3f722, transparent);
            background-repeat: repeat;
            background-size: 600px 600px;
            min-height: 100vh;
        }

        /* Skill Bar styles */
        .skill-bar-container {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 9999px; /* Tailwind's rounded-full */
            height: 8px; /* Tailwind's h-2 */
            overflow: hidden;
        }

        .skill-bar {
            background-color: #38bdf8; /* Tailwind's sky-400 */
            height: 100%;
            width: 0%; /* Start at 0, fill with JS */
            transition: width 1s ease-out; /* Smooth animation */
        }

        /* Fade-in animation for sections */
        .fade-in-section {
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.6s ease-out, transform 0.6s ease-out;
            will-change: opacity, transform;
        }

        .fade-in-section.is-visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>

<form id="form1" runat="server">
    <div class="space-bg py-10 px-6 sm:px-10">
        <div class="max-w-6xl mx-auto glass rounded-xl shadow-xl overflow-hidden md:flex">
            <div class="bg-blue-900 text-white md:w-1/3 p-6">
                <div class="text-center">  
                    <!-- Profile Picture -->
                    <img src="My photo.jpg" alt="Letlhogonolo Magano profile picture" 
                         class="rounded-full mx-auto mb-4 border-4 border-white w-32 h-32 object-cover" />
                    <h1 class="text-2xl font-bold glow">Letlhogonolo Magano</h1>
                    <p class="text-blue-200">Aspiring Software & Data Engineer</p>
                </div>
                <div class="mt-6 space-y-4 text-sm">
                    <section aria-labelledby="contact-heading">
                        <h2 id="contact-heading" class="uppercase text-blue-300 font-semibold">Contact</h2>
                        <ul class="mt-2 space-y-1">
                            <li>Email: maganotlhogie@gmail.com</li>
                            <li>Phone: +27 61 494 0471</li>
                            <li>Location: Johannesburg, South Africa</li>
                            <li>
                                GitHub:
                                <a href="https://github.com/Yoda-Mag" target="_blank" class="text-blue-400 underline" rel="noopener noreferrer">
                                    Yoda-Mag
                                </a>
                            </li>
                            <li>
                                LinkedIn:
                                <a href="https://www.linkedin.com/in/letlhogonolo-magano-a254a6244" target="_blank" class="text-blue-400 underline" rel="noopener noreferrer">
                                    Letlhogonolo Magano
                                </a>
                            </li>
                        </ul>
                    </section>

                    <section aria-labelledby="skills-heading">
                        <h2 id="skills-heading" class="uppercase text-blue-300 font-semibold">Skills</h2>
                        <ul class="mt-2 space-y-3">
                            <li>
                                <div class="flex justify-between mb-1">
                                    <span>HTML / CSS / JS</span>
                                    <span class="text-xs text-blue-200" data-skill-level="90%">90%</span>
                                </div>
                                <div class="skill-bar-container">
                                    <div class="skill-bar" data-skill-percentage="90"></div>
                                </div>
                            </li>
                            <li>
                                <div class="flex justify-between mb-1">
                                    <span>Java / C# / Python / C++ / SQL</span>
                                    <span class="text-xs text-blue-200" data-skill-level="85%">85%</span>
                                </div>
                                <div class="skill-bar-container">
                                    <div class="skill-bar" data-skill-percentage="85"></div>
                                </div>
                            </li>
                            <li>
                                <div class="flex justify-between mb-1">
                                    <span>Computer Networking / Databases</span>
                                    <span class="text-xs text-blue-200" data-skill-level="75%">75%</span>
                                </div>
                                <div class="skill-bar-container">
                                    <div class="skill-bar" data-skill-percentage="75"></div>
                                </div>
                            </li>
                            <li>
                                <div class="flex justify-between mb-1">
                                    <span>Communication / Leadership</span>
                                    <span class="text-xs text-blue-200" data-skill-level="95%">95%</span>
                                </div>
                                <div class="skill-bar-container">
                                    <div class="skill-bar" data-skill-percentage="95"></div>
                                </div>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>

            <div class="md:w-2/3 p-8 space-y-10 text-gray-300">
                <section class="fade-in-section" aria-labelledby="about-heading">
                    <h2 id="about-heading" class="text-2xl font-bold section-title glow mb-2">About Me</h2>
                    <p class="text-sm leading-relaxed">
                        A passionate and dedicated IT professional with experience in software development, network design, and problem-solving.
                        Enthusiastic about building efficient, user-focused systems and continually learning new technologies.
                    </p>
                </section>

                <section class="fade-in-section" aria-labelledby="experience-heading">
                    <h2 id="experience-heading" class="text-2xl font-bold section-title glow mb-4">Experience</h2>
                    <h3 class="text-sm text-blue-300 font-semibold">Student Assistant</h3>
                    <p class="text-sm text-blue-300">Nov 2023 – Jun 2024</p> <ul class="list-disc list-inside text-sm mt-1 space-y-1">
                        <li>Developed internal **data analysis tools** using Python and React, **improving reporting efficiency by 25%**.</li>
                        <li>Collaborated effectively in an <strong>agile team of 5</strong> to deliver projects on time, **consistently meeting sprint goals**.</li>
                        <li>Maintained **comprehensive documentation** and performed **rigorous code reviews**, **enhancing code quality and team collaboration**.</li>
                    </ul>
                </section>

                <section class="fade-in-section" aria-labelledby="education-heading">
                    <h2 id="education-heading" class="text-2xl font-bold section-title glow mb-4">Education</h2>
                    <h3 class="text-lg font-semibold text-white">BSc in Information Technology – NWU</h3>
                    <p class="text-sm text-blue-300">Expected Completion: Nov 2025</p>
                    <p class="text-sm mt-1">Relevant Coursework: Databases, Computer Networks, AI, DSS, Security, Data Structures, Algorithms</p>
                </section>

                <section class="fade-in-section" aria-labelledby="certifications-heading">
                    <h2 id="certifications-heading" class="text-2xl font-bold section-title glow mb-4">Certifications and Achievements</h2>
                    <ul class="list-disc list-inside text-sm space-y-1">
                        <li>Amazon AWS: “Cloud-Quest: Cloud Practitioner” Badge (July 2025)</li>
                        <li>EC-Council: Ethical Hacking Essentials (April 2024)</li>
                        <li>Top 15% of my class (2024)</li>
                    </ul>
                </section>

                <div class="mt-6">
                    <a href="Documents/CAREER/Main.pdf" download="Letlhogonolo_Magano_CV.pdf"
                       class="inline-block bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition transform hover:scale-105 duration-300 ease-in-out shadow-lg">
                        <svg class="inline-block w-5 h-5 mr-2 -mt-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 17a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm3.293-7.707a1 1 0 011.414 0L9 10.586V3a1 1 0 112 0v7.586l1.293-1.293a1 1 0 111.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        Download CV (PDF)
                    </a>
                </div>
            </div>
        </div>

        <footer class="text-center mt-8 text-sm text-blue-400 glow">
            ✨ Letlhogonolo Magano © 2025 | Orbiting excellence in C#
        </footer>
    </div>
</form>

<script>
    // --- Skill Bar Animation ---
    const skillBars = document.querySelectorAll('.skill-bar');

    const animateSkillBars = () => {
        skillBars.forEach(bar => {
            const percentage = bar.dataset.skillPercentage;
            bar.style.width = percentage + '%';
        });
    };

    // Animate skill bars when they are in view
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.5 // Trigger when 50% of the element is visible
    };

    const skillBarObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateSkillBars();
                observer.disconnect(); // Stop observing once animated
            }
        });
    }, observerOptions);

    // Start observing the first skill bar container
    const firstSkillBarContainer = document.querySelector('.skill-bar-container');
    if (firstSkillBarContainer) {
        skillBarObserver.observe(firstSkillBarContainer);
    }


    // --- Section Fade-in Animation ---
    const fadeInSections = document.querySelectorAll('.fade-in-section');

    const sectionObserverOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1 // Trigger when 10% of the element is visible
    };

    const sectionObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('is-visible');
                observer.unobserve(entry.target); // Stop observing once visible
            }
        });
    }, sectionObserverOptions);

    fadeInSections.forEach(section => {
        sectionObserver.observe(section);
    });

    // --- Accessibility: rel="noopener noreferrer" for external links ---
    document.querySelectorAll('a[target="_blank"]').forEach(link => {
        if (!link.rel) { // Only add if rel attribute is not already present
            link.rel = 'noopener noreferrer';
        }
    });
</script>

</body>
</html>