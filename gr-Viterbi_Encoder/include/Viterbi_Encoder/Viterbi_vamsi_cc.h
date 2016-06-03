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


#ifndef INCLUDED_VITERBI_ENCODER_VITERBI_VAMSI_CC_H
#define INCLUDED_VITERBI_ENCODER_VITERBI_VAMSI_CC_H

#include <Viterbi_Encoder/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace Viterbi_Encoder {

    /*!
     * \brief <+description of block+>
     * \ingroup Viterbi_Encoder
     *
     */
    class VITERBI_ENCODER_API Viterbi_vamsi_cc : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<Viterbi_vamsi_cc> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of Viterbi_Encoder::Viterbi_vamsi_cc.
       *
       * To avoid accidental use of raw pointers, Viterbi_Encoder::Viterbi_vamsi_cc's
       * constructor is in a private implementation
       * class. Viterbi_Encoder::Viterbi_vamsi_cc::make is the public interface for
       * creating new instances.
       */
      static sptr make();
    };

  } // namespace Viterbi_Encoder
} // namespace gr

#endif /* INCLUDED_VITERBI_ENCODER_VITERBI_VAMSI_CC_H */

