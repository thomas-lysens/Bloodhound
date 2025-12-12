//! ## Basic Usage
//!
//! If you want to use Bloodhound in withing your project, you have to import it first after adding it to your Cargo.toml.
//! ```rust
//! use bloodhound;
//! ```

// third-party crates
use pcap;

// [Private] Bloodhound Modules -- Do not alter the source of these
mod types;
mod utils;

// [Public] Bloodhound Logic -- For use in project
// TODO: Write a function that looks for all interfaces available
