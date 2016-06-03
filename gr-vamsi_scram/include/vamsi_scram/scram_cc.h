/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_VAMSI_SCRAM_SCRAM_CC_H
#define INCLUDED_VAMSI_SCRAM_SCRAM_CC_H

#include <vamsi_scram/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace vamsi_scram {

    /*!
     * \brief <+description of block+>
     * \ingroup vamsi_scram
     *
     */
    class VAMSI_SCRAM_API scram_cc : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<scram_cc> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of vamsi_scram::scram_cc.
       *
       * To avoid accidental use of raw pointers, vamsi_scram::scram_cc's
       * constructor is in a private implementation
       * class. vamsi_scram::scram_cc::make is the public interface for
       * creating new instances.
       */
      static sptr make();
    };

  } // namespace vamsi_scram
} // namespace gr

#endif /* INCLUDED_VAMSI_SCRAM_SCRAM_CC_H */

