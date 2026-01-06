import "./Shows.css";
const ShowsAndEvents = () => {
  const showsAndEvents = [
    {
      location: "Germany",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/germany.jpg",
    },
    {
      location: "Barcelona",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image4.webp",
    },
    // {
    //   location: "USA",
    //   image:
    //     "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image2.webp",
    // },
    {
      location: "USA",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(1).png",
    },
    // {
    //   location: "Italy",
    //   image:
    //     "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image5.webp",
    // },
     {
      location: "Italy",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(2).png",
    },
    {
      location: "Harrogate UK",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image1.webp",
    },
    {
      location: "Chicago",
      image:
        "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image7.jpg",
    },
  ];

  return (
    <div className="my-8 3xl:h-[calc(100vh-441px)]">
      <div className="container grid grid-cols-1 md:grid-cols-3">
        {showsAndEvents.map((show, index) => (
  <div key={index} className="flip-container">
    <div className="flip-card h-[200px] border border-primary p-2 shadow-sm transition-all hover:shadow-md md:h-[400px]">
      <div className="front text-center text-xl font-bold font-adornstoryserif 3xl:text-2xl">
        {show.location}
      </div>
      <div className="back">
        <img src={show.image} alt="" />
      </div>
    </div>
  </div>
))}

      </div>
    </div>
  );
};

export default ShowsAndEvents;
// "use client";

// import "./Shows.css";
// import { useEffect, useRef } from 'react';

// const ShowsAndEvents = () => {
//   const showsAndEvents = [
//     {
//       location: "Germany",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/germany.jpg",
//       date: "March 15, 2024",
//       description: "Berlin Fashion Week Showcase"
//     },
//     {
//       location: "Barcelona",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image4.webp",
//       date: "April 22, 2024",
//       description: "Mediterranean Style Exhibition"
//     },
//     {
//       location: "USA",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(1).png",
//       date: "May 30, 2024",
//       description: "New York Fashion Gala"
//     },
//     {
//       location: "Italy",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(2).png",
//       date: "June 18, 2024",
//       description: "Milan Couture Week"
//     },
//     {
//       location: "Harrogate UK",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image1.webp",
//       date: "July 5, 2024",
//       description: "British Heritage Show"
//     },
//     {
//       location: "Chicago",
//       image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image7.jpg",
//       date: "August 12, 2024",
//       description: "Midwest Fashion Festival"
//     },
//   ];

//   const sectionRef = useRef(null);

//   useEffect(() => {
//     const observer = new IntersectionObserver(
//       (entries) => {
//         entries.forEach((entry) => {
//           if (entry.isIntersecting) {
//             entry.target.classList.add('animate-in');
//           }
//         });
//       },
//       { threshold: 0.1 }
//     );

//     const elements = document.querySelectorAll('.animate-on-scroll');
//     elements.forEach((el) => observer.observe(el));

//     return () => observer.disconnect();
//   }, []);

//   // Counter animation effect
//   useEffect(() => {
//     const counters = document.querySelectorAll('.counter-number');
    
//     const animateCounter = (counter) => {
//       const target = parseInt(counter.getAttribute('data-count'));
//       const duration = 2000;
//       const step = target / (duration / 16);
//       let current = 0;
      
//       const timer = setInterval(() => {
//         current += step;
//         if (current >= target) {
//           counter.textContent = target;
//           clearInterval(timer);
//         } else {
//           counter.textContent = Math.floor(current);
//         }
//       }, 16);
//     };

//     const counterObserver = new IntersectionObserver(
//       (entries) => {
//         entries.forEach((entry) => {
//           if (entry.isIntersecting) {
//             animateCounter(entry.target);
//             counterObserver.unobserve(entry.target);
//           }
//         });
//       },
//       { threshold: 0.5 }
//     );

//     counters.forEach((counter) => counterObserver.observe(counter));

//     return () => counterObserver.disconnect();
//   }, []);

//   return (
//     <div ref={sectionRef} className="shows-events-section py-20 bg-white relative ">
      
//       {/* Animated Background Elements */}
//       <div className="absolute inset-0 overflow-hidden">
//         <div className="floating-orbs">
//           <div className="orb orb-1"></div>
//           <div className="orb orb-2"></div>
//           <div className="orb orb-3"></div>
//         </div>
//         <div className="animated-grid"></div>
//       </div>

//       {/* Header Section */}
//       <div className="container mx-auto px-4 relative z-10">
//         <div className="text-center mb-16 animate-on-scroll">
//           <div className="inline-block relative">
//             <h2 className="text-5xl md:text-7xl font-bold text-gray-900 mb-6 font-adornstoryserif" data-text="Shows & Events">
//               Shows & Events
//             </h2>
//             <div className="title-underline"></div>
//           </div>
//           <p className="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed font-mysi">
//             Journey through our global fashion showcases where style meets innovation
//           </p>
          
//           {/* Animated Counter */}
//           <div className="flex justify-center space-x-8 mt-8">
//             <div className="text-center">
//               <div className="counter-number text-3xl font-bold text-gray-900" data-count="6">0</div>
//               <div className="text-gray-600 text-sm font-mysi">Locations</div>
//             </div>
//             <div className="text-center">
//               <div className="counter-number text-3xl font-bold text-gray-900" data-count="12">0</div>
//               <div className="text-gray-600 text-sm font-mysi">Events</div>
//             </div>
//             <div className="text-center">
//               <div className="counter-number text-3xl font-bold text-gray-900" data-count="50">0</div>
//               <div className="text-gray-600 text-sm font-mysi">Designs</div>
//             </div>
//           </div>
//         </div>

//         {/* Cards Grid */}
//         <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 relative z-10">
//           {showsAndEvents.map((show, index) => (
//             <div
//               key={index}
//               className={`show-card animate-on-scroll group relative h-96 rounded-lg overflow-hidden cursor-pointer border border-gray-200`}
//               style={{ animationDelay: `${index * 0.1}s` }}
//             >
//               {/* Main Image Container */}
//               <div className="absolute inset-0 overflow-hidden">
//                 <img
//                   src={show.image}
//                   alt={show.location}
//                   className="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-1000"
//                 />
                
//                 {/* Multi-layer Overlays */}
//                 <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/30 to-transparent"></div>
//                 <div className="absolute inset-0 bg-gradient-to-r from-gray-900/10 to-gray-900/10 mix-blend-overlay"></div>
                
//                 {/* Animated Scan Line */}
//                 <div className="scan-line"></div>
//               </div>

//               {/* Content */}
//               <div className="absolute inset-0 p-6 flex flex-col justify-end text-white">
                
//                 {/* Location Badge */}
//                 <div className="location-badge mb-4 transform group-hover:translate-x-0 -translate-x-2 transition-transform duration-500">
//                   <span className="bg-white text-gray-900 px-4 py-2 rounded-full text-sm font-semibold inline-block font-mysi">
//                     {show.location}
//                   </span>
//                 </div>

//                 {/* Main Text */}
//                 <h3 className="text-2xl font-bold mb-2 transform group-hover:translate-y-0 translate-y-4 transition-transform duration-500 delay-100 font-adornstoryserif">
//                   {show.description}
//                 </h3>
                
//                 {/* Date */}
//                 <p className="text-gray-200 mb-4 transform group-hover:translate-y-0 translate-y-4 transition-transform duration-500 delay-200 font-mysi">
//                   {show.date}
//                 </p>

//                 {/* Hover Action Button */}
//                 <div className="transform group-hover:translate-y-0 translate-y-8 opacity-0 group-hover:opacity-100 transition-all duration-500 delay-300">
//                   {/* <button className="bg-white text-gray-900 px-6 py-2 rounded-full font-semibold hover:bg-gray-100 transition-colors duration-300 flex items-center space-x-2 font-mysi">
//                     <span>View Details</span>
//                     <svg className="w-4 h-4 transform group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
//                       <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
//                     </svg>
//                   </button> */}
//                 </div>
//               </div>

//               {/* Border Effects */}
//               <div className="absolute inset-0 border-2 border-transparent group-hover:border-white/30 rounded-lg transition-all duration-500"></div>
//               <div className="corner-border corner-tl"></div>
//               <div className="corner-border corner-tr"></div>
//               <div className="corner-border corner-bl"></div>
//               <div className="corner-border corner-br"></div>

//               {/* Particle Effect on Hover */}
//               <div className="particles-container">
//                 {[...Array(12)].map((_, i) => (
//                   <div key={i} className="particle"></div>
//                 ))}
//               </div>
//             </div>
//           ))}
//         </div>

//         {/* CTA Section */}
//         <div className="text-center mt-16 animate-on-scroll">
//           <button className="cta-button bg-gray-900 text-white px-12 py-4 rounded-full font-bold text-lg hover:bg-gray-800 transition-all duration-300 transform hover:scale-105 hover:shadow-2xl relative overflow-hidden group font-mysi">
//             <span className="relative z-10">Explore All Events</span>
//             <div className="absolute inset-0 bg-gray-800 opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
//             <div className="shine-effect"></div>
//           </button>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default ShowsAndEvents;