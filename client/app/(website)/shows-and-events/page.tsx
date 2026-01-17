"use client";

import React, { useEffect, useState } from 'react';
import "./Shows.css";

const ShowsAndEvents = () => {
  // State for Modal
  const [isModalOpen, setIsModalOpen] = useState(false);

  const showsAndEvents = [
    { location: "Germany", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/germany.jpg", date: "Jan 30 - Feb 2, 2026", desc: "European Fashion Week" },
    { location: "Barcelona", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image4.webp", date: "June 2-5, 2026", desc: "Bridal Fashion Week" },
    { location: "USA", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(1).png", date: "Feb 11-17, 2026", desc: "Atlanta Formal Market" },
    { location: "Italy", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image%20(2).png", date: "Feb 24 - Mar 2, 2026", desc: "Milan Fashion Week" },
    { location: "Harrogate UK", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image1.webp", date: "February 1-3, 2026", desc: "Harrogate Fashion Week" },
    { location: "Chicago", image: "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/shows-and-events/image7.jpg", date: "May 1-3, 2026", desc: "National Bridal Market" },
  ];

  useEffect(() => {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) entry.target.classList.add('animate-in');
      });
    }, { threshold: 0.1 });

    document.querySelectorAll('.animate-on-scroll').forEach(el => observer.observe(el));
    return () => observer.disconnect();
  }, []);

  // Modal handlers
  const openModal = () => setIsModalOpen(true);
  const closeModal = () => setIsModalOpen(false);

  return (
    <div className="shows-events-section py-16 bg-white">
      <div className="container mx-auto px-4">
        {/* Header Section */}
        <div className="text-center mb-12 animate-on-scroll">
          <h2 className="text-4xl md:text-5xl font-adornstoryserif mb-4 uppercase tracking-widest">Shows & Events</h2>
          <p className="text-gray-600 max-w-2xl mx-auto text-lg">
            Discover our upcoming fashion shows and events around the world. Hover over the cards to see preview images.
          </p>
        </div>

        {/* Grid Section */}
        <div className="shows-grid grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
          {showsAndEvents.map((show, index) => (
            <div 
              key={index} 
              className="show-card group animate-on-scroll"
              style={{ transitionDelay: `${index * 0.1}s` }}
            >
              <span className="location-text">{show.location}</span>
              <div className="image-layer">
                <img src={show.image} className="w-full h-full object-contain" alt={show.location} />
                <div className="scan-line"></div>
              </div>
              <div className="hover-content">
                <h3 className="text-xl font-bold font-adornstoryserif">{show.desc}</h3>
                <p className="text-sm opacity-90">{show.date}</p>
              </div>
            </div>
          ))}
        </div>

        {/* Footer CTA */}
        <div className="text-center mt-16 animate-on-scroll">
          <h2 className="text-2xl font-adornstoryserif mb-2 uppercase">Join Us At Our Next Event</h2>
          <p className="text-gray-600 mb-6">Experience the latest collections from Chic & Holland at fashion events around the world.</p>
          <button 
            onClick={openModal} 
            className="bg-black text-white px-10 py-3 uppercase tracking-widest text-sm hover:bg-gray-800 transition-all shadow-lg"
          >
            Request an Invitation
          </button>
        </div>
      </div>

      {/* --- FORM MODAL --- */}
      {isModalOpen && (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4">
          {/* Overlay background */}
          <div 
            className="absolute inset-0 bg-black/60 backdrop-blur-sm" 
            onClick={closeModal}
          ></div>

          {/* Form Container */}
          <div className="relative bg-white w-full max-w-md p-8 rounded-lg shadow-2xl animate-fade-in-up z-10">
            <button 
              onClick={closeModal} 
              className="absolute top-4 right-4 text-gray-400 hover:text-black text-2xl"
            >
              &times;
            </button>

            <h2 className="text-3xl font-adornstoryserif mb-6 text-center">Inquiry Form</h2>
            
            <form className="space-y-4">
              <div>
                <label className="block text-xs uppercase tracking-widest font-bold mb-1">Full Name</label>
                <input type="text" className="w-full border-b border-gray-300 py-2 focus:border-black outline-none transition-colors" placeholder="John Doe" required />
              </div>
              <div>
                <label className="block text-xs uppercase tracking-widest font-bold mb-1">Email Address</label>
                <input type="email" className="w-full border-b border-gray-300 py-2 focus:border-black outline-none transition-colors" placeholder="email@example.com" required />
              </div>
              <div>
                <label className="block text-xs uppercase tracking-widest font-bold mb-1">Select Event</label>
                <select className="w-full border-b border-gray-300 py-2 focus:border-black outline-none transition-colors bg-white">
                  {showsAndEvents.map((show, i) => (
                    <option key={i} value={show.location}>{show.desc} - {show.location}</option>
                  ))}
                </select>
              </div>
              <div>
                <label className="block text-xs uppercase tracking-widest font-bold mb-1">Message</label>
                <textarea className="w-full border-b border-gray-300 py-2 focus:border-black outline-none transition-colors" rows="3" placeholder="Tell us more..."></textarea>
              </div>
              <button className="w-full bg-black text-white py-4 mt-4 uppercase tracking-widest hover:bg-gray-800 transition-colors">
                Send Request
              </button>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};

export default ShowsAndEvents;